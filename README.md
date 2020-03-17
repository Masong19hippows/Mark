This is a testing project in case of me screwing up my Mark Project.

Mark is a functional "AI". (Machine Learning thing)


REQUIREMENTS

inotifywait # apt-get install inotify-tools

mplayer # apt-get install mplayer

Google Cloud SDK (Straight from https://cloud.google.com/sdk/docs#deb) 

1. echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
2. sudo apt-get install apt-transport-https ca-certificates gnupg
3. curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
4. sudo apt-get update && sudo apt-get install google-cloud-sdk
5. gcloud init


SETUP

1. Go to The directory auth and follow instructions there.
2. Execute the file introduction.sh to imput Username into Mark.
3. Autostart the file Mark.sh by adding into Cron.
