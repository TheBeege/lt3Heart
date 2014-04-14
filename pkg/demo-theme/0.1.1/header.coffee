class exports.Header extends lt3.Header

  # template
  template: ->
    @title ?= 'title'

    div class: 'bar', ->
      div class: 'inner', ->
        if @logo
          a class: 'logo', 'data-app': 'home', ->
            img src: @logo
        if @title
          div class: 'title', ->
            @title
