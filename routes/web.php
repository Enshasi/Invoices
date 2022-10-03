<?php

use Illuminate\Support\Facades\Route;


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
    return view('auth.login');
});

//Auth
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Auth::routes();
//Auth::routes( ['register' => false]);  // No auth register (page === hidden)




//Invoices
Route::get('invoices', 'App\Http\Controllers\InvoicesController@index');
Route::get('invoices/create', 'App\Http\Controllers\InvoicesController@create');
Route::post('invoices/store', 'App\Http\Controllers\InvoicesController@store');
Route::get('edit_invoice/{id}', 'App\Http\Controllers\InvoicesController@edit');
Route::post('invoices/update', 'App\Http\Controllers\InvoicesController@update');
Route::post('invoices/destroy', 'App\Http\Controllers\InvoicesController@destroy');
Route::get('Status_show/{id}', 'App\Http\Controllers\InvoicesController@show');
Route::post('Status_Update/{id}', 'App\Http\Controllers\InvoicesController@status_Update');
Route::get('Invoice_Paid', 'App\Http\Controllers\InvoicesController@invoice_Paid');
Route::get('Invoice_UnPaid', 'App\Http\Controllers\InvoicesController@invoice_unpaid');
Route::get('Invoice_Partial', 'App\Http\Controllers\InvoicesController@invoice_partial');
//print
Route::get('Print_invoice/{id}', 'App\Http\Controllers\InvoicesController@Print_invoice');
//Excel
Route::get('exportInvoices/', 'App\Http\Controllers\InvoicesController@export');
//Notfication
Route::get('MarkAsRead_all','App\Http\Controllers\InvoicesController@MarkAsRead_all'); //read All


//Archive

Route::get('Archive', 'App\Http\Controllers\InvoiceAchiveController@index');
Route::post('Archive/update', 'App\Http\Controllers\InvoiceAchiveController@update');


//InvoicesDetailsController
Route::get('invoices/InvoicesDetails/{id}', 'App\Http\Controllers\InvoicesDetailsController@edit');
Route::get('invoices/get_file/{invoice_number/{id}', 'App\Http\Controllers\InvoicesDetailsController@get_file');
Route::get('invoices/open_file/{invoice_number/{id}', 'App\Http\Controllers\InvoicesDetailsController@open_file');
Route::post('invoices/delete_file', 'App\Http\Controllers\InvoicesDetailsController@destroy');
///invoiceAttachments
Route::post('invoiceAttachments/store', 'App\Http\Controllers\InvoiceAttachmentsController@store');


//sections
Route::get('sections', 'App\Http\Controllers\SectionsController@index');
Route::post('sections/store', 'App\Http\Controllers\SectionsController@store');
Route::post('sections/update', 'App\Http\Controllers\SectionsController@update');
Route::post('sections/destroy', 'App\Http\Controllers\SectionsController@destroy');
//Code ajax => Product
Route::get('section/{id}', 'App\Http\Controllers\SectionsController@getproducts');



//products
Route::get('products', 'App\Http\Controllers\productsController@index');
Route::post('products/store', 'App\Http\Controllers\productsController@store');
Route::post('products/update', 'App\Http\Controllers\productsController@update');
Route::post('products/destroy', 'App\Http\Controllers\productsController@destroy');



//premations => الصلاحيات
Route::group(['middleware' => ['auth']], function() {

    Route::get('roles','App\Http\Controllers\RolesController@index');
    Route::get('users','App\Http\Controllers\UserController@index');

    Route::get('roles/index','App\Http\Controllers\RolesController@index');
    Route::post('roles/store','App\Http\Controllers\RolesController@store');
    Route::get('roles/create/','App\Http\Controllers\RolesController@create');
    Route::get('roles/show/{id}','App\Http\Controllers\RolesController@show');
    Route::get('roles/edit/{id}','App\Http\Controllers\RolesController@edit');
    Route::Patch('roles/update/{id}','App\Http\Controllers\RolesController@update');

    Route::get('users/index','App\Http\Controllers\UserController@index');
    Route::get('users/edit/{id}','App\Http\Controllers\UserController@edit');
    Route::Patch('users/update/{id}','App\Http\Controllers\UserController@update');
    Route::post('users/destroy','App\Http\Controllers\UserController@destroy');
    Route::get('users/create/','App\Http\Controllers\UserController@create');
    Route::post('users/store','App\Http\Controllers\UserController@store');



});
//Report
Route::get('invoices_report','App\Http\Controllers\invoices_report@index');
Route::post('Search_report','App\Http\Controllers\invoices_report@Search_invoices');

Route::get('customers_report','App\Http\Controllers\customers_report@index');
Route::post('Search_customers','App\Http\Controllers\customers_report@Search_customers');


//Page index == 'Home'
Route::get('/{page}', 'App\Http\Controllers\AdminController@index');



