class App.Views.Footer extends Backbone.View
	tagName: 'footer'
	template: HandlebarsTemplates['app/templates/footer']
	render: ->
		# console.log(@template())
		@$el.html(@template())
		@