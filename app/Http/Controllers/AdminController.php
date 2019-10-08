<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\MyModels\Comment;

class AdminController extends Controller
{
    public function admin()
    {
    	$comments = Comment::orderBy('id', 'DESC')->paginate(5);
        return view('admin', ['comments' => $comments ]);
    }


    //Удаляем комментарий
    public function delete_comment(Request $request, $id)
    {
        Comment::delete_comment($request, $id);
        return redirect('/admin');
    }

   //Показать комментарий
    public function show_comment(Request $request, $id)
    {
        Comment::show_comment($request, $id);
        return redirect('/admin');
    }

   //Скрыть комментарий
    public function hide_comment(Request $request, $id)
    {
        Comment::hide_comment($request, $id);
        return redirect('/admin');
    }
}
