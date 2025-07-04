<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AutorizacionVueloController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::group(['middleware' => 'auth'], function () {

    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

    /*Nivel Administrador*/
    Route::group(['middleware' => ['auth', 'Administrador']], function () {
        Route::resource('registro', \App\Http\Controllers\registro_usuario\RegistroController::class);
        Route::get('/usuario/baja/{id}', [\App\Http\Controllers\registro_usuario\RegistroController::class, 'baja'])->name('usuario.baja');
        Route::resource('listado_usuario', \App\Http\Controllers\registro_usuario\ListadoUsuarioController::class);
        Route::resource('listado_roles', \App\Http\Controllers\registro_usuario\ListadoRolesController::class);
        // Route::resource('registro_regional', \App\Http\Controllers\registro_usuario\RegistroRegionalController::class);
        Route::resource('resetear_contrasena', \App\Http\Controllers\registro_usuario\ResetearContrasenaController::class);
    });

  
    // Rutas comunes para Registro y Autorización
    Route::group(['middleware' => ['auth', 'RegistroORAutorizacion']], function () {
        Route::get('/autorizacion/index_ingreso', [AutorizacionVueloController::class, 'index_ingreso'])->name('autorizacion.index_ingreso');
        Route::get('/autorizacion/index_sobrevuelo', [AutorizacionVueloController::class, 'index_sobrevuelo'])->name('autorizacion.index_sobrevuelo');
        Route::post('/registro-autorizacion', [AutorizacionVueloController::class, 'store'])->name('registro-autorizacion.store');
        Route::get('/registro-autorizacion/baja/{id}', [AutorizacionVueloController::class, 'baja'])->name('registro-autorizacion.baja');
    });

    /*Nivel Usuario*/
    Route::group(['middleware' => ['auth', 'Usuario']], function () {});

    Route::resource('rol_usuario', \App\Http\Controllers\RolUsuarioController::class);
    Route::resource('actualizar_contrasena', \App\Http\Controllers\registro_usuario\ActualizarContrasenaController::class);
});
