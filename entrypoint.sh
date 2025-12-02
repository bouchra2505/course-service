#!/bin/bash

# Run database migrations
echo "Applying database migrations..."
python manage.py migrate --noinput

if [ $? -ne 0 ]; then
  echo "Migrations failed!"
  exit 1
fi

echo "Migrations applied successfully."

# Start Gunicorn server
echo "Starting Gunicorn..."
exec gunicorn course_service.wsgi:application --bind 0.0.0.0:$PORT