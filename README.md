Simple keyboardLayout improvement program based on [Autohotkey](https://www.autohotkey.com/).

Easy to use functions like extended clipboard capabilities for multiple keys, F1 to F3 for example.


Functions:
- F9 Minimize current Window.
- F11 Mute Microphone or both volume and microphone at once. Also reenable it.
- F10 Close current Window.
- F8 Get current time displayed and spoken out by a Python script.
- F4 Get Internet state.
- F1 to F3 Multiple extra clipboards, all persistent to withstand PC restarts. Short press insert whats stored, long press save new content.
- F5 Open Spotify on long press or hide it in the background. On short press, previous song will be played.
- F6 Closes Spotify on long press and pauses current song on short press.
- F7 Plays next song.

Note that this program has seen better days, so functions like volume muting didnt work as expected on my current operating system (Easily fixable if needed).
Easy customizing for your own needs or adding more features.

Also this program comes with a starter.ahk to being able to activate and deactivate the keyboardLayout with a button press (End key). To use this, building the keyboardLayout.ahk as an .exe file is required.


What you need:
[Autohotkey](https://www.autohotkey.com/) installed.
Python installed with [pyttsx3](https://github.com/nateshmbhat/pyttsx3), if time speaking feature is wanted.
Spotify installed, if feature wanted.
