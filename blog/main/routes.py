import os

from flask import Blueprint, render_template, request
from blog.models import Post

main = Blueprint('main', __name__)


@main.route("/home")
def home():
    s3 = os.environ.get('S3')
    page = request.args.get('page', 1, type=int)
    posts = Post.query.order_by(Post.date_posted.desc()).paginate(page=page, per_page=5)
    return render_template('home.html', posts=posts, s3=s3)


@main.route("/about")
def about():
    return render_template('about.html', title='About')


