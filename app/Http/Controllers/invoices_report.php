<?php

namespace App\Http\Controllers;

use App\Models\invoices;
use Illuminate\Http\Request;

class invoices_report extends Controller
{
    public function index(){
        return view('reports.invoices_report');
    }
    public  function Search_invoices(Request $request){
        //Value == 1 Or Value=2
        $rdio = $request->rdio;
        if ($rdio == 1) {
            // في حالة عدم تحديد تاريخ
            if ($request->type && $request->start_at =='' && $request->end_at =='') {
                $invoices = invoices::select('*')->where('Status','=',$request->type)->get();
                $type = $request->type;
                return view('reports.invoices_report',compact('type'))->withDetails($invoices);


            }
            // في حالة تحديد تاريخ استحقاق

            else{
                $start_at = date($request->start_at); //10/9/2010
                $end_at = date($request->end_at);  //20/10/2020
                $type = $request->type;  //مدفوعة, غير, جزئيه

                $invoices = invoices::whereBetween('invoice_Date',[$start_at,$end_at])->where('Status','=',$request->type)->get();
                return view('reports.invoices_report',compact('type','start_at','end_at'))->withDetails($invoices);
            }




            }
        //====================================================================

// في البحث برقم الفاتورة
        else {

            $invoices = invoices::select('*')->where('invoice_number','=',$request->invoice_number)->get();
            return view('reports.invoices_report')->withDetails($invoices);

        }

        }
}
