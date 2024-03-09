SetWorkingDir %A_ScriptDir% 
F9::WinMinimize, A
F11::
    data_clock2(){
	    While GetKeyState("F11"){
            Sleep, 10 ; every 10 miliseconds
			time_taker += 10
			if(time_taker>500){
			    break
			}
        }
		SoundGet, microphone_mute, MASTER, mute,7
		if(time_taker>500){
		    if(microphone_mute = "Off"){
                SoundSet, +1, MASTER, mute,7
                SplashImage, save_text\notmic.jpg, b x1800 y950
                Sleep, 2000
                SplashImage, Off				
		    }else{
		        SoundSet, 0, MASTER, mute,7  
				SplashImage, save_text\mic.jpg, b x1800 y950
                Sleep, 2000
                SplashImage, Off
		    }
		}
		else{ 
		    if(microphone_mute = "Off"){
                SoundSet, +1, MASTER, mute,7 
				SoundSet, +1, MASTER, mute,1
				SplashImage, save_text\notmicandsound.jpg, b x1700 y950
                Sleep, 2000
                SplashImage, Off
		    }else{
		        SoundSet, 0, MASTER, mute,7 
                SoundSet, 0, MASTER, mute,1  
                SplashImage, save_text\micandsound.jpg, b x1650 y950
                Sleep, 2000
                SplashImage, Off				
			}

	    }
}
		     



F10::WinClose, A

F8::
    data_clock(){

        NOW=%A_Hour%:%A_MIN%:%A_Sec%
        Progress, zh0 fs14,It is %NOW%, ,Zeit
        WinMove,Zeit, , 1600,1000 
		Run python save_text\text_to_speech.py "It is "%A_Hour%" o clock "" "%A_Min%,,Hide
        Sleep, 2000 
		Progress, Off
    }

ConnectedToInternet(flag=0x40)
{
  Return DllCall("Wininet.dll\InternetGetConnectedState"
        , "Str", flag,"Int",0)
}




F4::
    data_f4(){
	    If ConnectedToInternet(){
			SplashImage, save_text\online.jpg, b x1800 y950
            Sleep, 2000
            SplashImage, Off
			
		}
		else{
		    SplashImage, save_text\offline.png, b x1800 y950 
            Sleep, 2000
            SplashImage, Off
		
		
		}
	}





F1::
    data_f1(){
	    now_text = %ClipBoard%
	    While GetKeyState("F1"){
            Sleep, 10 ; every 10 miliseconds
			time_taker += 10
			if(time_taker>500){
			    break
			}
        }
		if(time_taker>500){
		    if FileExist("save_text\F1.txt"){
			    FileDelete, save_text\F1.txt
			}
			Send ^c
		    marked_text = %ClipBoard%
            FileAppend, %marked_text%, save_text\F1.txt
			SplashImage, save_text\saved.jpg, b x1800 y950 
            Sleep, 2000
            SplashImage, Off
			
		}
		else{ 
		    if FileExist("save_text\F1.txt"){
		        FileRead, fill_in_text, save_text\F1.txt
			    clipboard = %fill_in_text%
                Send ^v
			}
			
		}
		clipboard = %now_text%
	}


F2::
    data_f2(){
	    now_text = %ClipBoard% 
	    While GetKeyState("F2"){
            Sleep, 10 ; every 10 miliseconds
			time_taker += 10
			if(time_taker>500){
			    break
			}
        }
		if(time_taker>500){
		    if FileExist("save_text\F2.txt"){
			    FileDelete, save_text\F2.txt
			}
			Send ^c
		    marked_text = %ClipBoard%
            FileAppend, %marked_text%, save_text\F2.txt
			SplashImage, save_text\saved.jpg, b x1800 y950 
            Sleep, 2000
            SplashImage, Off
			
		}
		else{ 
		    if FileExist("save_text\F2.txt"){
		        FileRead, fill_in_text, save_text\F2.txt
			    clipboard = %fill_in_text%
                Send ^v
			}
			
		}
		clipboard = %now_text%
	}






F3::
    data_f3(){
	    now_text = %ClipBoard%
	    While GetKeyState("F3"){
            Sleep, 10 ; every 10 miliseconds
			time_taker += 10
			if(time_taker>500){
			    break
			}
        }
		if(time_taker>500){
		    if FileExist("save_text\F3.txt"){
			    FileDelete, save_text\F3.txt
			}
			Send ^c
		    marked_text = %ClipBoard%
            FileAppend, %marked_text%, save_text\F3.txt
			SplashImage, save_text\saved.jpg, b x1800 y950 
            Sleep, 2000
            SplashImage, Off
			
		}
		else{ 
		    if FileExist("save_text\F3.txt"){
		        FileRead, fill_in_text, save_text\F3.txt
			    clipboard = %fill_in_text%
                Send ^v
			}
			
		}
		clipboard = %now_text%
	}

	
	
	
	
	
win_hide_status=False
F5::
    run_prev(){
	    While GetKeyState("F5"){
            Sleep, 10 ; every 10 miliseconds
			time_taker += 10
			if(time_taker>500){
			    break
			}
        }
		if(time_taker>500){
			if(win_hide_status=True){
			    WinShow, Spotify
				checkwin=False
			}
			else{
			    Run, Spotify.exe
				SplashImage, save_text\spotify.jpg, b x1700 y950 
                Sleep, 3000
                SplashImage, Off
			    Send {Media_Play_Pause}
				WinHide, Spotify
				checkwin=True
            }
            if(checkwin=True){
			    win_hide_status=True
			}	
            if(checkwin=False){
			    win_hide_status=False
			}				
		}
		else{ 
		    Send {Media_Prev}
		}
	
	}
	
F6::
    close_pause(){
	    While GetKeyState("F6"){
            Sleep, 10 ; every 10 miliseconds
			time_taker += 10
			if(time_taker>500){
			    break
			}
        }
		if(time_taker>500){
            Process, Close,Spotify.exe
			SplashImage, save_text\close_spotify.jpg, b x1700 y950 
            Sleep, 3000
            SplashImage, Off
			
		}
		else{ 
		    Send {Media_Play_Pause}
		}
			
	} 
F7::Media_Next