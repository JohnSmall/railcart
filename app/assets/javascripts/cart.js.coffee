# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
class Cart
  constructor: (options) ->
    {@name,@after_change,@extract_key_value,@decorator} = options

  set: (value) =>
    localStorage.setItem(@name,JSON.stringify(value))
    @after_change()

  get: =>
    item = localStorage.getItem(@name)
    if item
      JSON.parse(item) 
    else
      {}

  total: =>
    total = 0
    for key,item of @get()
      total += parseFloat(item['buying-price']) 
    total

  empty: =>
    @set({})

  add: (key,value) =>
    items = @get()
    items[key]=value
    @set(items)

  remove: (key) =>
    items = @get()
    delete items[key]
    @set(items)

  add_item: (obj) =>
    [key,value] = @extract_key_value(obj)
    @add(key,value)

  decorate: =>
    @decorator(@get())

@cart_factory = (options)->
  new Cart(options)


