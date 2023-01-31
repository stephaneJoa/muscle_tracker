#titre Installation de l'environnement

Intaller Docker Desktop
git clone https://github.com/stephaneJoa/muscle_tracker.git



Se placer dans le dossier my_muscle_tracker
./my_muscle_tracker

source ./venv/Scripts/activate 

BUILD docker build -t my_muscle_tracker:latest .
RUN   docker run -p 8000:8000 my_muscle_tracker

