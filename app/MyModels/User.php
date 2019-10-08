<?php

namespace App\MyModels;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\File;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;


class User extends Model
{
	protected $fillable = ['name', 'email', 'image'];

	//Добавить комментарий
	public static function update_profile($request){

		//Есть ли такой емейл в базе
		$find_email = User::where('email', $request->email)->first();

		if (Auth::user()->email !== $request->email)
		{
			$request->validate([
	            'email' => 'unique:users,email|min:5'
	        ]);

	        User::where('id', Auth::user()->id)->update(['email' => $request->email]);
	        $request->session()->flash('profile_update_success', 'Профиль обновлен!');
		}

		//Есть ли такой емейл в базе
		$request->validate([
            'name' => 'required|min:5'
        ]);

		//Обновляем имя пользователя
		if (Auth::user()->name !== $request->name)
		{
			User::where('id', Auth::user()->id)->update(['name' => $request->name]);
			$request->session()->flash('profile_update_success', 'Профиль обновлен!');
		}

		//Проверяем на файл
		$request->validate([
			'image' => 'image'
		]);
        //Если все ок, сохраняем изображение
		if (isset($request->image))
		{
			if (Auth::user()->image !== 'img/no-user.jpg') {
				Storage::delete(Auth::user()->image);
			}			

			$image_url = Storage::putFile('/uploads', new File($request->image));	
			User::where('id', Auth::user()->id)->update(['image' => $image_url]);
			$request->session()->flash('profile_update_success', 'Профиль обновлен!');
		}
	}

	//Добавить комментарий
	public static function update_password($request){
		$request->validate([
				'current' => 'required|min:6',
				'password' => 'required|confirmed|min:6',
				'password_confirmation' => 'required|min:6',
		]);

		if(Hash::check($request->current, Auth::user()->password))
		{
			User::where('id', Auth::user()->id)->update(['password' => Hash::make($request->password)]);
			$request->session()->flash('profile_update_success', 'Пароль обновлен!');
		}else{
			$request->session()->flash('profile_update_error', 'Введен не верный текущий пароль!');
		}

	}

}


