if [ "$1" ]; then
    pelican content -o output -s publishconf.py
    ghp-import -m "$1" --no-jekyll -b master output
    #read -p "Ready to push to github pages?"
    git push origin master
else
    pelican content -o output -s publishconf.py
    pelican -r -l
fi