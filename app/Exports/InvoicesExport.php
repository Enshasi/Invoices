<?php

namespace App\Exports;

use App\Models\invoices;
use Maatwebsite\Excel\Concerns\FromCollection;

class InvoicesExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return invoices::all();

        //لو بدي جداول محدده فقط
       // return  invoices::select('invoices_number' , 'invoices_Date' , 'section ');

    }
}
