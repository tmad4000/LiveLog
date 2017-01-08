import datetime

import os
from os import listdir
from os.path import isfile, join



allNotes=[];

os.chdir("/Users/jacob/Library/Containers/com.x10studio.LetterspaceMac/Data/Documents/Home")
mypath = os.getcwd()

onlyfiles = [f for f in listdir(mypath) if isfile(join(mypath, f))]

for filename in onlyfiles:
	with open(filename, 'r') as content_file:
	    content = content_file.read()

	    time = os.path.getmtime(filename)

	    allNotes.append((content,time))

allNotes.sort(key=lambda tup: -tup[1])


ubernote=""

for note in allNotes:
	date = datetime.datetime.fromtimestamp(int(note[1])).strftime('%Y-%m-%d %H:%M:%S')

	ubernote=ubernote + note[0] + "\n\n********** " + str(date) + " **********\n\n"



with open('/Users/jacob/Documents/ubernote-py.txt', 'w+') as ubernote_file:
	    ubernote_file.write(ubernote)


print ubernote[0:1000]

print "\n\n\n\nExport to /Users/jacob/Documents/ubernote-py.txt successful"