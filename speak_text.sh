#!/bin/bash
#speak text
OUTPUT=$(zenity --entry --entry-text="Hallo" --title="speak_text_app" --text="Schreibe deinen Text den du vorlesen lassen willst")
echo $OUTPUT
pico2wave --lang=de-DE --wave=/tmp/speak.wav "$OUTPUT" && aplay /tmp/speak.wav && rm /tmp/speak.wav