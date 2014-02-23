class App.Views.NewProject extends Backbone.View
	
	template: HandlebarsTemplates['app/templates/new_project']

	events:
		"submit form": "saveProject"

	render: ->
		@$el.html(@template())
		@

	saveProject: (e) ->
		e.preventDefault()
		@model.set name: @$('#new-project-name').val()
		@model.set description: @$('#new-project-description').val()
		@model.save()