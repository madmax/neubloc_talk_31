class AjaxLoader

  @setup: ->
    $("[data-ajax-loader]").each (index, element) ->
      new AjaxLoader(element)

  constructor: (element) ->
    @element = $(element)
    @load()

  url: ->
    @element.data("url")

  load: ->
    @element.load(@url())

$ -> AjaxLoader.setup()
