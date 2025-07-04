@extends('layouts.app')

@section('cabecera')
    <li class="breadcrumb-home"><a href="#"> <i class="material-icons">home</i></a></li>
    <li class="breadcrumb-item"><a href="{{url('home')}}">Principal</a></li>
    <li class="breadcrumb-item active" aria-current="page">Actualizar Contraseña</li>
@endsection

@section('content')


    <div class="container my-lg">
        <h2 class="doc-section-title" id="examples">Actualizar Contraseña<a class="section-link"></a></h2>
        <div class="doc-example">
            <div class="row">
                <div class="col-md-12">
                    <form role="form" method="post" action="{{route('actualizar_contrasena.update',$buscar_usuario->id)}}" class="needs-validation error" novalidate enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <label for="exampleInputEmail1">Nombre Completo:</label>
                            <input type="text" class="form-control" name="name"  required pattern="[A-Za-z0-9]+" value="{{$buscar_usuario->name}}" readonly>
                            <div class="invalid-feedback">Este campo es obligatorio.</div>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Correo:</label>
                            <input type="email" class="form-control" name="email" required value="{{$buscar_usuario->email}}" readonly>
                            <div class="invalid-feedback">Este campo es obligatorio.</div>
                        </div>
                        <div class="control-group">
                            <label for="exampleFormControlInput1">Ingrese Nueva Contraseña:</label>
                            <div class="controls">
                                <input type="password" name="password" class="form-control" data-validation-required-message="Este campo es obligatorio" autocomplete="off" placeholder="Ingrese nueva contraseña...">
                            </div>
                        </div>
                        <br>
                        <button type="submit" class="btn btn-raised-primary"><i class="fa fa-save"></i> Guardar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>







@endsection
