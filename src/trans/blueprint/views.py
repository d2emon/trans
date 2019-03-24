# from flask import abort, render_template
# from flask_login import current_user, login_required
from flask import render_template, flash, redirect, url_for


from . import trans
from .forms import LocationForm, LinkForm
from ..models import Location


@trans.route('/')
def homepage():
    """
    Render the homepage template on the / route
    """
    location = Location.query.first()
    return render_template(
        'home/index.html',
        title="Добро пожаловать",
        location=location
    )


@trans.route('/location/add', methods=['GET', 'POST'])
@trans.route('/location/edit/<int:location_id>', methods=['GET', 'POST'])
def edit_location(location_id=None):
    """
    Edit location or add new location
    """
    # check_admin()

    add_location = (location_id is None)

    if add_location:
        location = Location()
    else:
        location = Location.query.get_or_404(location_id)

    form = LocationForm()
    if form.validate_on_submit():
        location.name = form.name.data
        location.description = form.description.data
        try:
            location.save()
            if add_location:
                flash('Новая локация успешно создана.')
            else:
                flash('Локация успешно отредактирована.')

        except:
            flash('Ошибка')
        return redirect(url_for('trans.homepage'))

    form.name.data = location.name
    form.description.data = location.description

    if add_location:
        action = "Добавить"
    else:
        action = "Редактировать"

    return render_template(
        'home/edit_location.html',
        action=action,
        add_location=add_location,
        form=form,
        links=location.links,
        title="%s Локацию" % (action, )
    )


@trans.route('/link/add', methods=['GET', 'POST'])
@trans.route('/link/edit/<int:from_location_id>/<int:to_location_id>', methods=['GET', 'POST'])
def edit_link(from_location_id=None, to_location_id=None):
    """
    Edit location or add new location
    """
    # check_admin()

    add_link = (from_location_id is None)

    if add_link:
        from_location = Location()
        to_location = None
    else:
        from_location = Location.query.get_or_404(from_location_id)
        to_location = None

    form = LinkForm()
    if form.validate_on_submit():
        # to_location = form.to_location
        to_location = form.to_location.data
        from_location.links.append(to_location)
        try:
            from_location.save()
            if add_link:
                flash('Новая локация успешно создана.')
            else:
                flash('Локация успешно отредактирована.')

        except:
            flash('Ошибка')
        return redirect(url_for('trans.homepage'))

    form.from_location.data = from_location
    # form.to_location = None

    if add_link:
        action = "Добавить"
    else:
        action = "Редактировать"

    return render_template(
        'home/edit_link.html',
        action=action,
        add_location=add_link,
        form=form,
        links=from_location.links,
        title="%s Локацию" % (action, )
    )


# @login_required
@trans.route('/admin/dashboard')
def admin_dashboard():
    # if not current_user.is_admin:
    #     abort(403)

    return render_template('home/admin_dashboard.html', title="Dashboard")
