class MainRouter extends Backbone.Router
    routes:
        '': 'index'

    index: ->
        IndexView = require 'views/index'
        index = new IndexView()
        
        GettingStartedView = require 'views/experiments/gettingstarted'
        new GettingStartedView(el: $("#getting-started")).render()

main = new MainRouter()
module.exports = main
