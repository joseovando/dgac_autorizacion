# DGAC Autorizacion

Este repositorio contiene dos proyectos que trabajan en conjunto:

- **laravel.autorizacion**: aplicación web basada en Laravel 10 que gestiona el registro y autorización de usuarios.
- **socket.server**: pequeño servidor Node.js que expone un servicio en tiempo real a través de Socket.IO consultando la base de datos Postgres.

## Instalación rápida

1. Clonar este repositorio.
2. Configurar e instalar la aplicación Laravel.
3. Configurar e iniciar el servidor de sockets.

A continuación se detallan los pasos para cada componente.

## 1. Aplicación Laravel

Desde la carpeta `laravel.autorizacion`:

1. Copiar el archivo `.env.example` a `.env` y definir la conexión a la base de datos y la clave de la aplicación.
2. Ejecutar las dependencias de PHP y JavaScript:

   ```bash
   composer update
   npm i
   ```
3. Crear la base de datos y poblarla con los datos de prueba:

   ```bash
   php artisan migrate --seed
   ```
4. Iniciar la aplicación en dos terminales diferentes:

   ```bash
   php artisan serve    # Terminal 1
   npm run watch        # Terminal 2
   ```

En el [`README.md` del proyecto Laravel](laravel.autorizacion/README.md) se incluyen ejemplos de credenciales generadas por los seeders y variables para la conexión a otros servicios.

## 2. Servidor Socket.IO

En `socket.server` se encuentra un servidor Node.js que emite actualizaciones periódicas de la base de datos. Para usarlo:

1. Revisar el archivo `.env` y ajustar los datos de conexión a Postgres y la lista de orígenes permitidos:

   ```
$(sed 's/`/\`/g' socket.server/.env)
   ```
2. Instalar dependencias y arrancar el servidor:

   ```bash
   npm install
   node server.js
   ```

El código principal se ubica en [`socket.server/server.js`](socket.server/server.js), donde se configuran CORS, la conexión a la base de datos y los eventos emitidos a los clientes.

## Estructura

```
laravel.autorizacion/   Aplicación web Laravel.
socket.server/          Servidor Node.js con Socket.IO.
```

Para más detalles sobre cada proyecto consulta los READMEs y la documentación interna de cada carpeta.
