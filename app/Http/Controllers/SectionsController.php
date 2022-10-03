<?php

namespace App\Http\Controllers;

use App\Models\sections;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class SectionsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sections = sections::all();
        return  view('sections.sections' , compact('sections'));
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
        $request->validate([
            'section_name' => 'required|unique:sections|max:255',
            'description' => 'required',
        ],[
                'section_name.required' => 'يرجى ادخال القسم ' ,
                'section_name.unique' => 'اسم القسم مسجل مسبقا  ' ,
                'description.required' => 'يرجى ادخال الوصف' ,
         ]
        );


           sections::create([
               'section_name' => $request->section_name ,
               'description' => $request->description ,
//               'Created_by' => (Auth::user()->name) ,

           ]);

           session()->flash('Add' , 'تم اضافة القسم بنجاح ');


           return  redirect('/sections');




    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\sections  $sections
     * @return \Illuminate\Http\Response
     */
    public function show(sections $sections)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\sections  $sections
     * @return \Illuminate\Http\Response
     */
    public function edit(sections $sections)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\sections  $sections
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $id = $request->id ;
        $request->validate([
            'section_name' => 'required|unique:sections|max:255'. $id,
            'description' => 'required',
        ],[
                'section_name.required' => 'يرجى ادخال القسم ' ,
                'section_name.unique' => 'اسم القسم مسجل مسبقا  ' ,
                'description.required' => 'يرجى ادخال الوصف' ,
            ]
        );
        $sections = sections::find($id) ;
//        $sections = sections::where('id' ,'=',$request->id) ;
        $sections->update([
            'section_name' => $request->section_name ,
            'description' => $request->description ,

        ]);
        session()->flash('edit' , 'تم تعديل القسم  بنجاح');
        return  redirect('/sections');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\sections  $sections
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
      $id = $request->id  ;
      $sections = sections::where('id' , '=' , $id)->delete();
        session()->flash('delete' , 'تم حذف  القسم  بنجاح');
        return  redirect('/sections');
    }
    public  function getproducts($id){
        $products = DB::table('products')->where('section_id' , $id)->pluck('Product_name' , "id");
        return json_encode($products);
    }
}
