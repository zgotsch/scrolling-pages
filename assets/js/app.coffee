$ ->
    app.add_module 'requests', ->
        make_a_request = ->
            $.ajax
                type: 'POST'
                data: 
                    to_square: 5
                url: '/square'
                success: ({result}) ->
                    alert "Success! #{result}"
                error: ->
                    alert 'Something Went Wrong!'

        { make_a_request }


    app.add_module 'example', ->
        button = $ '.the-button'
        button.on 'click', ->
            do app.requests.make_a_request
