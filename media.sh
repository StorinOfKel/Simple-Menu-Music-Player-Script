#!/bin/bash

# Simple Menu Music Player Script
# No copyright, 2020. Feel free to use it without restrictions.
# Charlie K

# SMMPS is actually nothing more but a BASH script allowing you to listen to music.
# The dependencies are: YouTube-DL (prefered from their source), FFMPEG and a *nix based shell.
# Last but not least: MPV

# Feel free to edit this file as you wish.


main_menu(){
	printf "    Main Menu\n"
	printf "\n"
	printf "    1) News\n"
	printf "    2) Coding\n"
	printf "    3) Games\n"
	printf "    4) Relaxing\n"
	printf "\n"
	printf "    x) x to exit\n"
	printf "\n"
	printf "    Your choice: "
	read main

clear
while [[ "$main" != '\n' ]];
    do
    if [[ "$main" = "\n" ]]; then
      exit;
    else
      case $main in
	1) clear;
	   dutch;
		;;
	2) clear;
	   coding;
		;;
	3) clear;
	   games;
		;;
	4) clear;
	   relaxing;
		;;
    x) clear;
      exit;
      ;;
      \n) clear;
      exit;
      ;;
    *) clear;
      option_picked "Pick an option from the menu";
      main_menu;
      ;;
      esac
    fi
  done
}
option_picked(){
    message=${@:-"Error: No message passed"}
    printf "${message}\n"
}
dutch(){
	printf "    Radio\n"
	printf "\n"
	printf "    1) Radio: NPO 1 (Dutch)\n"
	printf "    2) Radio: BNR (Dutch)\n"
	printf "    3) Radio: RTV Rijnmond (Dutch)\n"
	printf "\n"
	printf "    0) 0 to return to main menu\n"
	printf "    x) x to exit entirely\n"
	printf "\n"
	printf "    Your choice: "
    read dutch
  while [[ dutch != '\n' ]]
  do
    if [[ $dutch = "\n" ]]; then
      exit;
    else
      case $dutch in
	1) clear;
	   mpv http://icecast.omroep.nl/radio1-bb-mp3
	   clear;
	   dutch;
		;;
	2) clear;
	   mpv https://icecast-bnr-cdp.triple-it.nl/bnr_mp3_128_03
	   clear;
	   dutch;
		;;
	3) clear;
	   mpv https://d2e9xgjjdd9cr5.cloudfront.net/icecast/rijnmond/radio-mp3
	   clear;
	   dutch;
		;;
	0) clear;
	   main_menu;
		;;
    x) clear;
      exit;
      ;;
    \n) clear;
      exit;
      ;;
    *) clear;
      option_picked "Pick an option from the menu";
      apt_menu;
      ;;
      esac
    fi
  done
}

coding(){
	printf "    Programming Music\n"
	printf "\n"
	printf "    1) Concentration Programming Music (YouTube)\n"
	printf "    2) Chillstep Music (YouTube)\n"
	printf "    3) Future Garage (YouTube)\n"
	printf "    4) TimeCop 1983 (YouTube)\n"
	printf "    5) Hacker Coding Playlist (YouTube)\n"
	printf "    6) \n"
	printf "\n"
	printf "    0) 0 to return to main menu\n"
	printf "    x) x to exit entirely\n"
	printf "\n"
	printf "    Your choice: "
    read coding
  while [[ coding != '\n' ]]
  do
    if [[ $coding = "\n" ]]; then
      exit;
    else
      case $coding in
	1) clear;
	   mpv --no-video https://www.youtube.com/watch?v=0r6C3z3TEKw
	   clear;
	   coding;
		;;
	2) clear;
	   mpv --no-video https://www.youtube.com/watch?v=I2XzrDw4ziw
	   clear;
	   coding;
		;;
	3) clear;
	   mpv --no-video https://www.youtube.com/watch?v=1LH5JcJtV94
	   clear;
	   coding;
		;;
	4) clear;
	   mpv --no-video https://www.youtube.com/watch?v=AGCluKbW1AY
	   clear;
	   coding;
		;;
	5) clear;
	   mpv --no-video https://www.youtube.com/playlist?list=PLEM4vOSCprStzppPemEYAF6ZEUrQYj5N5
	   clear;
	   coding;
		;;
	0) clear;
	   main_menu;
		;;
    x) clear;
      exit;
      ;;
    \n) clear;
      exit;
      ;;
    *) clear;
      option_picked "Pick an option from the menu";
      coding;
      ;;
      esac
    fi
  done
}

games(){
	printf "    Games Playlists Online\n"
	printf "\n"
	printf "    1) Nintendo 2 Hours (YouTube)\n"
	printf "    2) Diablo II + LoD OST\n"
	printf "    3) TES Morrowing\Oblivion\Skyrim 12 hours full OST (YouTube)\n"
	printf "    4) \n"
	printf "    5) \n"
	printf "    6) \n"
	printf "\n"
	printf "    0) 0 to return to main menu\n"
	printf "    x) x to exit entirely\n"
	printf "\n"
	printf "    Your choice: "
    read games
  while [[ games != '\n' ]]
  do
    if [[ $games = "\n" ]]; then
      exit;
    else
      case $games in
	1) clear;
	   mpv --no-video https://www.youtube.com/watch?v=oUHvYOYMNJk
	   clear;
	   games;
		;;
	2) clear;
	   mpv --no-video https://www.youtube.com/watch?v=1h81d_jqcLw
	   clear;
	   games;
		;;
	3) clear;
	   mpv --no-video https://www.youtube.com/watch?v=EL0gz9COxBs
	   clear;
	   games;
		;;

	0) clear;
	   main_menu;
		;;
    x) clear;
      exit;
      ;;
    \n) clear;
      exit;
      ;;
    *) clear;
      option_picked "Pick an option from the menu";
      games;
      ;;
      esac
    fi
  done
}

relaxing(){
	printf "    Relaxing Music to calm the mind\n"
	printf "\n"
	printf "    1) Rain and Thunderstorm Cracking Fireplace (YouTube) \n"
	printf "    2) Rain Sound and Rainforest Animals (YouTube)\n"
	printf "    3) \n"
	printf "    4) \n"
	printf "    5) \n"
	printf "    6) \n"
	printf "\n"
	printf "    0) 0 to return to main menu\n"
	printf "    x) x to exit entirely\n"
	printf "\n"
	printf "    Your choice: "
    read relaxing
  while [[ relaxing != '\n' ]]
  do
    if [[ $relaxing = "\n" ]]; then
      exit;
    else
      case $relaxing in
	1) clear;
	   mpv --no-video https://www.youtube.com/watch?v=3sL0omwElxw
	   clear;
	   relaxing;
		;;
	2) clear;
	   mpv --no-video https://www.youtube.com/watch?v=8myYyMg1fFE
	   clear;
	   relaxing;
		;;

	0) clear;
	   main_menu;
		;;
    x) clear;
      exit;
      ;;
    \n) clear;
      exit;
      ;;
    *) clear;
      option_picked "Pick an option from the menu";
      relaxing;
      ;;
      esac
    fi
  done
}

main_menu
