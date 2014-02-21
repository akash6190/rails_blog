class App.Views.Content extends Backbone.View

	template: HandlebarsTemplates['app/templates/content']
	className: "row"

	render: ->
		console.log('Loading Content View')
		@$el.html(@template())
		@