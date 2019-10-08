<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MyModels\User;


class ProfileController extends Controller
{
    public function profile()
    {
        return view('profile');
    }

    public function update_profile(Request $request)
    {
    	//Обновляем профиль
        User::update_profile($request);
        return redirect('/profile');
    }

    public function update_password(Request $request)
    {
        //Обновляем профиль
        User::update_password($request);
        return redirect('/profile');
    }
}
