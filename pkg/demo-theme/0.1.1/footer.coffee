class exports.Footer extends lt3.Footer
  template: ->
    div class: 'inner', ->
      if @copyright
        div class: 'copyright', ->
          @copyright
