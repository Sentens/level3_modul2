@extends('layouts.app')

@section('content')
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header"><h3>Комментарии</h3></div>

                            <div class="card-body">
                              @if (session('comment_add_success'))
                                  <div class="alert alert-success">
                                      {{ session('comment_add_success') }}
                                  </div>
                              @endif
                                @foreach($comments as $comment)
                                  <div class="media">
                                    <img src="{{  $comment->user->image  }}" class="mr-3" alt="..." width="64" height="64">
                                    <div class="media-body">
                                      <h5 class="mt-0">{{ $comment->user->name }}</h5> 
                                      <span><small>{{ date('d/m/Y', strtotime($comment['created_at'])) }}</small></span>
                                      <p>
                                          {{ $comment['comment'] }}
                                      </p>
                                    </div>
                                  </div>
                                @endforeach
                                {{ $comments->links() }}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12" style="margin-top: 20px;">
                        <div class="card">
                            <div class="card-header"><h3>Оставить комментарий</h3></div>
@guest
                                    <div class="alert alert-primary m-3" role="alert">Чтобы оставить комментарий:
                                    <a href="/login"> авторизируйтесь</a></div>
@else
                            <div class="card-body">
                              @if($errors->first('comment'))
                                <div class="alert alert-danger" role="alert">
                                 {{ $errors->first('comment')}}
                                </div>
                              @endif
                              
                                <form action="/storeComment" method="post">
                                 
                                  <div class="form-group">
                                    <label for="exampleFormControlTextarea1">Сообщение</label>
                                    <textarea name="comment" class="form-control" id="exampleFormControlTextarea1" rows="3" value="{{ old('comment')}}"></textarea>
                                  </div>
                                   {{ csrf_field()}}
                                  <button type="submit" class="btn btn-success">Отправить</button>
                                </form>
                            </div>
@endguest
                        </div>
                    </div>
                </div>
            </div>
@endsection
