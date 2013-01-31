#!/bin/bash


function extract() { 
	#OUT_DIR = directory where archive is extracted
	#ARCHIVE = archive name or location

	echo "Enter the archive name or location with name if archive file is located in a different directory:"
		read ARCHIVE

	echo "Enter the the location archive will be extracted:"
		read OUT_DIR

	7z x $ARCHIVE $OUT_DIR
}

function archive() {
	#ARCHIVE_IN = file to be archived
	#ARCHIVE_OUT = output archive name

	echo "Enter the name or location with name of the file to be archived:"
		read ARCHIVE_IN

	echo "Enter the name of the desired archive name:"
		read ARCHIVE_OUT

	7z a "$ARCHIVE_OUT.7z" $ARCHIVE_IN
}

echo "Welcome to 7z archive/extration tool:"
echo "1 archive file"
echo "2 extract file"
	read ANSWER
	if [ "$ANSWER" = "1" ] ; then
		echo "archive shit worked."
		archive

	elif [ "$ANSWER=2" ] ; then
		echo "extract shit worked."
		extract

	fi

