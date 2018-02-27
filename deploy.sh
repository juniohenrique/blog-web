echo "Deploy no ambiente: $1"
rm -rf .git
git init
heroku git:remote -a blog-web
heroku config:set NODE_ENV=$1
git add . && git commit -m 'deploy'
git push heroku master --force