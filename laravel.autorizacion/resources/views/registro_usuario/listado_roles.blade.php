@extends('layouts.app')

<script src="{{ asset('js/jquery-3.6.0.min.js') }}"></script>

@section('cabecera')
    <li class="breadcrumb-home"><a href="#"> <i class="material-icons">home</i></a></li>
    <li class="breadcrumb-item"><a href="{{ url('home') }}">Principal</a></li>
    {{--    <li class="breadcrumb-item active" aria-current="page">Blank</li> --}}
@endsection

@section('content')
    <div class="px-lg py-lg bg-card">
        <div class="card">
            <div class="card-header">
                <h4 class="mb-0">Listado de Roles</h4>
            </div>

            <div class="card-body">

                <table id="tableDataRol" class="table table-striped table-hover" style="width:100%">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Rol</th>
                            <th>Nivel</th>
                        </tr>
                    </thead>

                    <tbody id="contenido-rol">
                        {{-- Aquí se cargarán los datos de usuarios dinámicamente --}}
                        @foreach ($roles as $index => $rol)
                            <tr>
                                <td>{{ $index + 1 }}</td>
                                <td>{{ $rol->descripcion }}</td>
                                <td>{{ $rol->rol_nivel }}</td>
                            </tr>
                        @endforeach
                    </tbody>

                </table>
            </div>
        </div>
    </div>


    {{-- @include('registro_usuario.modal_usuario') --}}
@endsection

<script src="https://cdn.socket.io/4.7.2/socket.io.min.js"></script>

<script>
    // Obtener la URL del socket desde el .env
    const SOCKET_URL = @json(env('SOCKET_URL', 'http://localhost:3001'));

    $(document).ready(function() {
        // Inicializa DataTable con idioma español para roles
        const table = $('#tableDataRol').DataTable({
            language: {
                url: 'https://cdn.datatables.net/plug-ins/1.13.6/i18n/es-ES.json'
            },
            columnDefs: [{
                targets: -1,
                orderable: false,
                searchable: false
            }]
        });

        // Conecta con el servidor socket
        const socket = io(SOCKET_URL, {
            transports: ['websocket'],
            reconnectionAttempts: 5
        });

        // Escucha el evento del socket para listado de roles
        socket.on('listado_roles', function(data) {
            table.clear();

            // console.log('Data Rol', data);

            data.forEach(function(item, index) {
                const editarBtn = `
                    <a href="#" class="btn btn-sm btn-warning btn-editar-usuario"
                        data-id="${item.pk_id_parametrica_descripcion}"
                        data-rol="${item.descripcion}"
                        data-nivel="${item.rol_nivel}"
                        title="Editar">
                        <i class="fa-solid fa-pen-to-square fa-lg"></i>
                    </a>`;

                const eliminarBtn = `
                    <a href="#" class="btn btn-sm btn-danger btn-eliminar-usuario"
                        data-id="${item.pk_id_parametrica_descripcion}"
                        title="Eliminar">
                        <i class="fa-solid fa-trash fa-lg"></i>
                    </a>`;

                table.row.add([
                    index + 1,
                    item.descripcion,
                    item.rol_nivel,
                    editarBtn + ' ' + eliminarBtn
                ]);
            });

            table.draw();
        });

        // Manejo de error de conexión
        socket.on('connect_error', function(err) {
            console.warn('Error al conectar con el socket:', err.message);
        });
    });
</script>


