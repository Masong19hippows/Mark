#!/bin/bash
# This direcotry is hardcoded and can be changed. This monitors changes to the request direcotry.
# When a change is made, then it executes junk in the middle.
cd /home/pi/Mark
LOG=tmp/log.txt
dir1=request/
echo "" > $LOG
while inotifywait -qqre modify "$dir1"; do
#
#
# This sets the credentials to the Google TTS API credentials file.
export GOOGLE_APPLICATION_CREDENTIALS="auth/credentials.json"
#
# This requests and creates a base 64 encoded mp3 file that conatins what was requested.
/usr/bin/curl -s -X POST -H "Authorization: Bearer "$(gcloud auth application-default print-access-token) -H "Content-Type: application/json; charset=utf-8" -d @request/request.json  https://texttospeech.googleapis.com/v1/text:synthesize > tmp/synthesize.txt
# This removes all spaces and junk and synthesizes the text file.
/bin/sed -i 's/\(}\| \|{\|audioContent\|"\|:\)//g' tmp/synthesize.txt
#
# This logs the output of the curl command above.
/bin/echo Encoded mp3 $(date) >> $LOG
/bin/cat tmp/synthesize.txt >> $LOG
#
# This decodes then autoplays the synthesized mp3 file.
/usr/bin/base64 tmp/synthesize.txt --decode > play/synthesized.mp3
# /usr/bin/mplayer -novideo -idle -slave play/synthesized.mp3 </dev/null >/dev/null 2>&1 &
#
done
