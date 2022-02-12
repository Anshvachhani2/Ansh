if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Anshvachhani99/AnshFilterBot.git/AnshFilterBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AnshFilterBot
fi
cd /AnshFilterBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
