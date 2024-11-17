#!/bin/bash

echo "Preparing repo creation..."

while true; do

    read -p "Input the repository name: " name

    read -p "Private or public?: " visibility
    
    read -p ".gitignore template: " language

    read -p "Do you want to clone the new repo to your current directory?: [y/n] " clone

    read -p "New repository: $name \
    Visibility: $visibility \
    .gitignore template: $language \
    Should clone repo?: $clone \
    \
    confirm?: [y/n] " confirmation

    if [[ "$confirmation" =~ ^[Yy]$ ]]; then
        break
    else
        echo "Ok, let's try again."
    fi
done

if [[ "$clone" =~ ^[Yy]$ ]]; then
    clone_arg="--clone"
else
    clone_arg=""
fi

gh repo create $name --$visibility  $clone_arg --add-readme --gitignore $language