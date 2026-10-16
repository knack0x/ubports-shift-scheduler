#!/usr/bin/env bash

OLD_IFS=$IFS
IFS=$'\n'

# NOTE: set this to `false` for action, this is a safety thing.
DEUBUG=true 

for file in `find . -name 'shift-scheduler-dev*'`; do 
    # Debug-Ausgabe
	echo "mv \"${file}\" -> \"${file/shift-scheduler-dev/shift-scheduler}\""

	if [[ ${DEBUG} == false ]]; then
		# Removed den `-dev` Kram im Filenamen
		mv "${file}" -> "${file/shift-scheduler-dev/shift-scheduler}"
	fi
done

for line in `grep --exclude='*.git/*' --exclude='*CHANGELOG.md' --exclude='*.session.vim' --exclude="*.workspace/*" --exclude='*build/*' --exclude='*.scripts/*' -i -r "shift-scheduler-dev" .`; do 
    # Extrahiert den Dateinamen (alles vor dem ersten Doppelpunkt)
    file=$(echo "${line}" | cut -d: -f1)
    
    # Debug-Ausgabe
    echo "Ersetze 'shift-scheduler-dev' mit 'shift-scheduler' in Datei: ${file}"
    
	if [[ ${DEBUG} == false ]]; then
		# Ersetzt den Kram direkt in der Datei
		sed -i 's/shift-scheduler-dev/shift-scheduler/g' "${file}"
	fi
done

IFS=${OLD_IFS}
