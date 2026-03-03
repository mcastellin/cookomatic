# Cook-O-Matic

A sample web application that anyone can use to run off-the-shelf and to play around and learn application development and automation!

## Overview

Cook-O-Matic is a Flask-based web application designed to manage recipes. It provides a simple interface for creating, viewing, and editing recipes. The application uses SQLAlchemy for database operations, WTForms for form handling, and Flask-WTF for form validation. Additionally, it includes features like user authentication and role-based access control.

## Architecture

### Components

1. **Flask Application**: The core of the application, built using the Flask web framework. It handles routing, request handling, and response generation.

2. **SQLAlchemy ORM**: Manages database operations, including creating, reading, updating, and deleting records. It provides a high-level abstraction over the database, allowing developers to interact with the database using Python objects.

3. **WTForms**: Handles form creation and validation. It provides a simple and flexible way to create forms and validate user input.

4. **Flask-WTF**: Integrates WTForms with Flask, providing additional functionality such as CSRF protection and form rendering.

5. **Docker**: Containerizes the application for easy deployment and scaling. It allows developers to package the application and its dependencies into a single, portable container.

6. **GitHub Actions**: Automates the build and security scanning process. It ensures that the application is built and tested automatically, and that any vulnerabilities are detected and addressed.

## Usage

### Running the Application

To run the application, follow these steps:

1. **Install Dependencies**: Ensure you have Python 3 and `make` installed on your system.

2. **Build the Docker Image**: Run the following command to build the Docker image:
   ```sh
   make build
   ```

3. **Run the Application**: Start the application using Docker Compose:
   ```sh
   make run
   ```

### Advanced Configuration

#### Environment Variables

You can configure the application using environment variables. Here are some commonly used variables:

- `SECRET_KEY`: A secret key used for securely signing the session cookie.
- `DATABASE_URL`: The URI for the database that the application will use.

#### Database Migrations

To apply database migrations, use the following commands:

- **Create a New Migration**:
  ```sh
  flask db migrate -m "Initial migration."
  ```

- **Apply Migrations**:
  ```sh
  flask db upgrade
  ```

- **Revert Migrations**:
  ```sh
  flask db downgrade
  ```

### Advanced Features

#### User Authentication

Cook-O-Matic includes user authentication using Flask-Login. Users can register, login, and logout. Role-based access control ensures that only authorized users can perform certain actions.

#### Custom Forms

You can extend the existing form by adding more fields or modifying the existing ones. For example, you can add a new field for the cooking time:

```python
from flask_wtf import FlaskForm
from wtforms import StringField, TextAreaField, SubmitField
from wtforms.validators import DataRequired, Length

class RecipeForm(FlaskForm):
    name = StringField('Name', validators=[DataRequired(), Length(max=256)])
    ingredients = TextAreaField('Ingredients')
    directions = TextAreaField('Directions')
    cooking_time = StringField('Cooking Time', validators=[DataRequired()])
    submit = SubmitField('Submit')
```

#### Custom Routes

You can add new routes to handle specific functionalities. For example, you can create a route to display a list of all recipes:

```python
from flask import render_template
from app import app
from app.models import Recipe

@app.route('/recipes')
def recipes():
    recipes = Recipe.query.all()
    return render_template('recipes.html', recipes=recipes)
```

## Contributing

Contributions are welcome! If you find a bug or have a feature request, please open an issue. If you'd like to contribute code, fork the repository and submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.