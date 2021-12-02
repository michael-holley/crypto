#!/bin/bash

echo "

---------------------------------------------------------------------
"                                                                
echo "  _|_|_|  _|_|_|    _|      _|  _|_|_|    _|_|_|_|_|    _|_|  "
echo "_|        _|    _|    _|  _|    _|    _|      _|      _|    _|"
echo "_|        _|_|_|        _|      _|_|_|        _|      _|    _|" 
echo "_|        _|    _|      _|      _|            _|      _|    _|"
echo "  _|_|_|  _|    _|      _|      _|            _|        _|_|  "
echo "
---------------------------------------------------------------------

"                                                


#This is just the start to get this up and running. Updates to come

read -p "Are you decrypting a file? (Y/N) " ANS
case "$ANS" in
	y|Y)
		echo "Awesome, let Crypto do the work."
		read -e -p "Enter filename, use tab for completion (up to 3 files at a time): " FILE1 FILE2 FILE3
		echo "
		"
		echo "base64"
		cat $FILE1 $FILE2 $FILE3 | base64 -d
		echo "
		"
		echo "ROT13"
		cat $FILE1 $FILE2 $FILE3 | tr ‘n-za-mN-ZA-M’ ‘a-zA-Z’ 
		echo "
		"
		;;
		
	n|N)
		echo "So you wanna hide info more than you want to understand it...lame...okay then, let's encrypt for ya. *Rolls Eyes*"
		;;
	*) 
		echo "I told you to type Y/N for input smart one. Try again."
		;;
esac







#if encrypt do

#if decrypt ask 
