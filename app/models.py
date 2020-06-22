from app import db


class Recipe(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(256), index=True, unique=True)

    def __repr__(self):
        return "<Recipe {}>".format(self.name)
