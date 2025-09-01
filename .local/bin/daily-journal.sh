#!/usr/bin/zsh

today=$(date +"%a, %d %b %Y")
file_name=$HOME/1billu1/journal/daily/$(date +"%Y-%m-%d").md

new_note() {
    touch "$file_name"
    cat <<EOF >"$file_name"
# $today

## Intention

What do I want to achieve today and tomorrow?

## Tracking

- [ ] skin routine
- [ ] ghoda is a respectable animal
- [ ] run
- [ ] talk to family

## Log
EOF

}

if [ ! -f "$file_name" ]; then 
    echo "File does not exist, creating new daily note."
    new_note
fi

nvim "$file_name"
