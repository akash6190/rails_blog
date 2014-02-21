class App.Views.Header extends Backbone.View

	className: "navbar navbar-default"
	tagName: "nav"
	template: HandlebarsTemplates['app/templates/header']

	render : ->
		@$el.html(@template())
		@