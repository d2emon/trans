from app import db
import random


class Location(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(
        db.String(256),
        nullable=True,
        default="",
        info={'label': "Название"}
    )
    description = db.Column(db.UnicodeText, info={'label': "Описание"})

    def __repr__(self):
        return self.name

    def randomize(self, fake):
        self.name = fake.pyint()
        chance = random.randint(0, 100)
        if chance < 25:
            self.description = "\n".join(fake.paragraphs())
