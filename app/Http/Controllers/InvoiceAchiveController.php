<?php

namespace App\Http\Controllers;

use App\Models\InvoiceAchive;
use App\Models\invoices;
use Illuminate\Http\Request;

class InvoiceAchiveController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $invoices = invoices::onlyTrashed()->get(); //All deleted_at === date
        return view('invoices.Archive_invoices' , compact('invoices')) ;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\InvoiceAchive  $invoiceAchive
     * @return \Illuminate\Http\Response
     */
    public function show(InvoiceAchive $invoiceAchive)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\InvoiceAchive  $invoiceAchive
     * @return \Illuminate\Http\Response
     */
    public function edit(InvoiceAchive $invoiceAchive)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\InvoiceAchive  $invoiceAchive
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, InvoiceAchive $invoiceAchive)
    {

        $id = $request->invoice_id ;
        $flight = invoices::withTrashed()->where('id' , $id)->restore();
        return redirect('/invoices');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\InvoiceAchive  $invoiceAchive
     * @return \Illuminate\Http\Response
     */
    public function destroy(InvoiceAchive $invoiceAchive)
    {
        //
    }
}
