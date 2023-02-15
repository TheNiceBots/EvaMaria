if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TheNiceBots/miamalkova.git /miamalkova
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /miamalkova
fi
cd /miamalkova
pip3 install -U -r requirements.txt
echo "Starting MalkovaRoBot...."

python3 bot.py
