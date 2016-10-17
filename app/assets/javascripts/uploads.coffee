console.log 'uploads.coffee'
$(document).on 'turbolinks:load', ->
  console.log 'turbolinks loaded'
  $('input[type=file]').fileupload
    add: (e, data) ->
      console.log 'add', data
      data.progressBar = $('<div class="progress" style="width: 300px"><div class="progress-bar"></div></div>').insertAfter('body')
      options =
        extension: data.files[0].name.match(/(\.\w+)?$/)[0]
        _: Date.now()
      $.getJSON '/images/upload/cache/presign', options, (result) ->
        console.log 'presign', result
        data.formData = result['fields']
        data.url = result['url']
        data.paramName = 'file'
        data.submit()

    progress: (e, data) ->
      console.log 'progress', data
      progress = parseInt(data.loaded / data.total * 100, 10)
      percentage = progress.toString() + '%'
      data.progressBar.find('.progress-bar').css('width', percentage).html percentage

    done: (e, data) ->
      console.log 'done', data
      data.progressBar.remove()
      image =
        id: data.formData.key.match(/cache\/(.+)/)[1]
        storage: 'cache'
        metadata:
          size: data.files[0].size
          filename: data.files[0].name.match(/[^\/\\]+$/)[0]
          mime_type: data.files[0].type
      form = $(this).closest('form')
      form_data = new FormData(form[0])
      form_data.append $(this).attr('name'), JSON.stringify(image)
      $.ajax form.attr('action'),
        contentType: false
        processData: false
        data: form_data
        method: form.attr('method')
        dataType: 'script'
