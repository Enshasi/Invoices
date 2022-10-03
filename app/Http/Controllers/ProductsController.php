<?php

namespace App\Http\Controllers;

use App\Models\products;
use App\Models\sections;
use Illuminate\Http\Request;

class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sections = sections::all();
        $products = products::all();
        return  view('products.products' , compact('sections' , 'products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        /**
        $request->validate([
            'Product_name' => 'required|unique:products|max:255',
            'description' => 'required',
            'section_id' => 'required',

        ],[
                'Product_name.required' => 'يرجى ادخال القسم ' ,
                'Product_name.unique' => 'اسم القسم مسجل مسبقا  ' ,
                'description.required' => 'يرجى ادخال الوصف' ,

            ]
        );
         ***/

        products::create([
            'Product_name' => $request->product_name ,
             'description' => $request->description ,
            'section_id' => $request->section_id ,
        ]);
        session()->flash('Add' , 'تم أضافة المنتج بنجاح ');
        return  redirect('/products');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\products  $products
     * @return \Illuminate\Http\Response
     */
    public function show(products $products)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\products  $products
     * @return \Illuminate\Http\Response
     */
    public function edit(products $products)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\products  $products
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, products $products)
    {
        $id = sections::where('section_name', '=', $request->section_name)->first()->id;

        $Products = Products::where('id' , $request->pro_id); // id  = id

        $Products->update([
            'Product_name' => $request->Product_name,
            'description' => $request->description,
            'section_id' => $id,
        ]);

        session()->flash('Edit', 'تم تعديل المنتج بنجاح');
        return  redirect('/products');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\products  $products
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {

        $products = products::where('id' , $request->pro_id)->delete();
        session()->flash('delete', 'تم حذف المنتج بنجاح');
        return  redirect('/products');
    }
}
