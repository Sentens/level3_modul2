<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\MyModels\Comment;

class HomeController extends Controller
{
        
    public function index()
    {
        // factory(Comment::class, 10)->create();
        $comments = Comment::where('hidden', '0')->orderBy('id', 'DESC')->paginate(5);
        return view('index', ['comments' => $comments]);
    }

    //Добавление комментария на главной
    public function addComment(Request $request)
    {
        //Добавляем комментарий
        Comment::add_comment($request);
        return redirect('/home')->with('comment_add_success', 'Комментарий успешно добавлен');
    }


}
