import sys
import pyttsx3


speechtext= sys.argv[1]
talker = pyttsx3.init()
talker.setProperty('rate', 150)
talker.say(str(speechtext))
talker.runAndWait()
