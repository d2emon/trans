# from flask import abort, render_template
# from flask_login import current_user, login_required
from flask import render_template


from . import trans


@trans.route('/')
def homepage():
    """
    Render the homepage template on the / route
    """
    return render_template('home/index.html', title="Welcome")


# @login_required
@trans.route('/dashboard')
def dashboard():
    """
    Render the dashboard template on the /dashboard route
    """
    return render_template('home/dashboard.html', title="Dashboard")


# @login_required
@trans.route('/admin/dashboard')
def admin_dashboard():
    # if not current_user.is_admin:
    #     abort(403)

    return render_template('home/admin_dashboard.html', title="Dashboard")
