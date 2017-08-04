from app import db
import random


link_table = db.Table(
    'link',
    db.Column('from_location', db.Integer, db.ForeignKey('location.id')),
    db.Column('to_location', db.Integer, db.ForeignKey('location.id')),
)


class Location(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(
        db.String(256),
        nullable=True,
        default="",
        info={'label': "Название"}
    )
    description = db.Column(db.UnicodeText, info={'label': "Описание"})

    links = db.relationship(
        'Location',
        secondary=link_table,
        primaryjoin=id == link_table.c.from_location,
        secondaryjoin=id == link_table.c.to_location,
    )

    def __repr__(self):
        return str(self.name)

    def randomize(self, fake):
        self.name = fake.pyint()
        chance = random.randint(0, 100)
        if chance < 25:
            self.description = "\n".join(fake.paragraphs())

    def save(self):
        db.session.add(self)
        db.session.commit()
