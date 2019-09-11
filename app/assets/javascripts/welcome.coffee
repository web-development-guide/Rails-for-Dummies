$(window).load () ->
  $.ajax
    method: 'POST'
    url: '/movies'
    data:
      movie:
        title: 'a'
        description: 'b'
      csrf_param: $('meta[name=csrf-param').attr('content')
      csrf_token: $('meta[name=csrf-token').attr('content')
    success: (res) ->
      console.log res
