from app import app
from app.models import Recipe
from flask import render_template


@app.route("/")
@app.route("/index")
def index():
    recipes = Recipe.query.all()
    return render_template("index.html", title="Home", recipes=recipes)


@app.route("/recipe/<id>")
def recipe(id):
    recipe = Recipe.query.filter_by(id=id).first_or_404()
    return render_template("details.html", title=recipe.name, recipe=recipe)
