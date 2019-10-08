<?php

namespace App\MyModels;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;


class Comment extends Model
{
	protected $fillable = ['user_id', 'comment'];

	public function user()
	{
		return $this->BelongsTo('App\User');
	}


	//Добавить комментарий
	public static function add_comment($request){

		$request->validate([
            'comment' => 'required|min:20',
        ]);

       Comment::create([
            'user_id' => Auth::user()->id,
            'comment' => $request['comment']
       ]);
	}
	//Удалить комментарий
	public static function delete_comment($request, $id){

		Comment::where('id', $id)->delete();
	}

	//Показать комментарий
	public static function show_comment($request, $id){
		Comment::where('id', $id)->update(['hidden' => 0]);
	}

	//Скрыть комментарий
	public static function hide_comment($request, $id){
		Comment::where('id', $id)->update(['hidden' => 1]);
	}

}


