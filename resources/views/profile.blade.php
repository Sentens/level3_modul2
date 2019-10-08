@extends('layouts.app')

@section('content')
          <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                        @foreach($errors->all() as $error)
                                <div class="alert alert-danger" role="alert">
                                            {{ $error}}
                                </div>
                        @endforeach
                        @if (session('profile_update_success'))
                          <div class="alert alert-success">
                              {{ session('profile_update_success') }}
                          </div>
                        @endif
                        @if (session('profile_update_error'))
                          <div class="alert alert-danger">
                              {{ session('profile_update_error') }}
                          </div>
                        @endif
                    <div class="card">
                        <div class="card-header"><h3>Профиль пользователя</h3></div>
                        <div class="card-body">
                            <form action="/update_profile" method="post" enctype="multipart/form-data">
                                {{ csrf_field()}}
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label for="exampleFormControlInput1">Name</label>
                                            <input type="text" class="form-control" name="name" id="exampleFormControlInput1" value="{{ Auth::user()->name }}">
                                           
                                        </div>

                                        <div class="form-group">

                                            <label for="exampleFormControlInput1">Email</label>
                                            <input type="email" class="form-control" name="email" id="exampleFormControlInput1" value="{{ Auth::user()->email }}">
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleFormControlInput1">Аватар</label>
                                            <input type="file" class="form-control" name="image" id="exampleFormControlInput1">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <img src="{{ Auth::user()->image }}" alt="" class="img-fluid">
                                    </div>

                                    <div class="col-md-12">
                                        <button class="btn btn-warning">Edit profile</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-12" style="margin-top: 20px;">
                    <div class="card">
                        <div class="card-header"><h3>Безопасность</h3></div>

                        <div class="card-body">

                            <form action="/update_password" method="post">
                                {{ csrf_field() }}

                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label for="exampleFormControlInput1">Current password</label>
                                            <input type="password" name="current" class="form-control" id="exampleFormControlInput1">
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleFormControlInput1">New password</label>
                                            <input type="password" name="password" class="form-control" id="exampleFormControlInput1">
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleFormControlInput1">Password confirmation</label>
                                            <input type="password" name="password_confirmation" class="form-control" id="exampleFormControlInput1">
                                        </div>

                                        <button class="btn btn-success">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
@endsection
