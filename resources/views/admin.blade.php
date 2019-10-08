@extends('layouts.app')

@section('content')
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header"><h3>Админ панель</h3></div>

                            <div class="card-body">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Аватар</th>
                                            <th>Имя</th>
                                            <th>Дата</th>
                                            <th>Комментарий</th>
                                            <th>Действия</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($comments as $comment)
                                        <tr>
                                            <td>
                                                <img src="{{  $comment->user->image  }}" alt="" class="img-fluid" width="64" height="64">
                                            </td>
                                            <td>{{ $comment->user->name }}</td>
                                            <td>{{ date('d/m/Y', strtotime($comment['created_at'])) }}</td>
                                            <td>{{ $comment['comment'] }}</td>
                                            <td>
                                                @if($comment->hidden == 1)
                                                    <a href="/comment/show_comment/{{{ $comment['id'] }}}" class="btn btn-success">Разрешить</a>
                                                @else
                                                    <a href="/comment/hide_comment/{{{ $comment['id'] }}}" class="btn btn-warning">Запретить</a>
                                                @endif
                                                <a href="/comment/delete/{{{ $comment['id'] }}}" onclick="return confirm('are you sure?')" class="btn btn-danger">Удалить</a>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                {{ $comments->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
@endsection
