const express = require('express');
const http = require('http');
const { Server } = require('socket.io');
const { Pool } = require('pg');
const cors = require('cors');
require('dotenv').config();

const app = express();

const allowedOrigins = process.env.ALLOWED_ORIGINS.split(',');

app.use(cors({
    origin: function (origin, callback) {
        if (!origin || allowedOrigins.includes(origin)) {
            callback(null, true);
        } else {
            callback(new Error("No autorizado por CORS"));
        }
    },
    credentials: true,
    methods: ["GET", "POST"],
    allowedHeaders: ["Content-Type"]
}));

const server = http.createServer(app);
const io = new Server(server, {
    cors: {
        origin: allowedOrigins,
        methods: ["GET", "POST"],
        allowedHeaders: ["Content-Type"],
        credentials: true
    },
    transports: ['websocket', 'polling']
});

const pool = new Pool({
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    database: process.env.DB_NAME,
    password: process.env.DB_PASSWORD,
    port: process.env.DB_PORT,
});

setInterval(async () => {
    try {
        const result8 = await pool.query('SELECT * FROM registro_autorizacion WHERE activo = 1 ORDER BY id DESC');
        io.emit('registro_autorizacion', result8.rows);

        const result9 = await pool.query('SELECT * FROM vista_usuarios WHERE activo = 1 ORDER BY nivel DESC');
        io.emit('listado_usuarios', result9.rows);

        const result10 = await pool.query('SELECT pk_id_parametrica_descripcion, descripcion, rol_nivel FROM parametrica_descripcions WHERE activo = 1 AND rol_nivel != 0');
        io.emit('listado_roles', result10.rows);
    } catch (err) {
        console.error('Error en el query:', err);
    }
}, 5000);

io.on('connection', (socket) => {
    console.log('Cliente conectado');
});

server.listen(process.env.SOCKET_PORT || 3001, () => {
    console.log('Socket.IO corriendo en puerto ' + (process.env.SOCKET_PORT || 3001));
});
