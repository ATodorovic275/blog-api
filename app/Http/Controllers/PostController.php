<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Post::with('author:id,first_name,last_name')
            ->with('category:id,name')
            ->with('image')
            ->paginate(10);
    }

    public function getRandomPosts()
    {
        return Post::
            inRandomOrder()
            ->with('author:id,first_name,last_name')
            ->with('category:id,name')
            ->with('image')
            ->offset(0)->limit(3)->get();
    }

    public function getLatestPosts()
    {
        return Post::orderBy("date")->get();
    }

    public function getPostsFromCategory($id)
    {
        return Post::
            with('author:id,first_name,last_name')
            ->with('category:id,name')
            ->with("image")
            ->where("category_id", $id)->get();
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
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return Post::with('author:id,first_name,last_name')
            ->with('category:id,name')
            ->with('image')
            ->find($id);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
