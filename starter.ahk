counter=1
Run *RunAs "keyboardLayout.exe" /restart
End::
    if(counter==0){
	    Run *RunAs "keyboardLayout.exe" /restart
		counter=1
		}
	else{
        run taskkill /IM keyboardLayout.exe,, Hide
		counter=0
		}
