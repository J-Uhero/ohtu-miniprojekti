from src.app import app
from src.database import db
from src.config import PORT, HOST

port = PORT or 5000

if __name__ == '__main__':
    db.create_all()
    app.run(port=port, host=HOST)
