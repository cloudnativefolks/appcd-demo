# Flask-crud app

A simple Flask Python CRUD app to understand how the basics of CRUD works with a database.   

# Stack

- **Framework**: [Flask](https://flask.palletsprojects.com/en/2.2.x/)
- **Database**: [Postgres](https://www.postgresql.org/)
- **Authentication**: not applicable
- **Deployment**: [Vercel](https://vercel.com)
- **Styling**: [Bootstrap](https://getbootstrap.com/)
- **Analytics**: not applicable

## Running Locally

Use the .devcontainer to run the program inside of .devcontainer.

```bash Docker Compuse
version: '3.8'

services:
  app:
    image: sangam14/flask-crud:latest  # Assuming this is the image with everything set up
    restart: unless-stopped
    ports:
      - "5100:5000"  # Exposing the Flask app on port 5100 externally. Reminder the logic is HOST:CONTAINER. The container port has to be 5000 as the build image we set it as 5000 in the dockerfile.

    depends_on:
      - db

  db:
    image: postgres:latest
    restart: unless-stopped
    volumes:
      - postgres-data:/var/lib/postgresql/data
    environment:
      POSTGRES_USER: postgres
      POSTGRES_DB: postgres
      POSTGRES_PASSWORD: postgres  # Make sure to use secure passwords in production
    ports:
      - "5432:5432"

volumes:
  postgres-data:

```

This application requires the latest python and flask to be installed.

```bash
git clone https://github.com/buildwithdan/flask-crud
cd flask-crud
flask --debug --app api.app run
```

docker-compose.yml
