if [ -n "$DJANGO_SUPERUSER_USERNAME" ] && [ -n "$DJANGO_SUPERUSER_PASSWORD" ] ; then
    (cd python_rest_api; python3 manage.py createsuperuser --no-input)
fi
(cd python_rest_api; gunicorn python_rest_api.wsgi --user www-data --bind 0.0.0.0:8010 --workers 3) &
nginx -g "daemon off;"