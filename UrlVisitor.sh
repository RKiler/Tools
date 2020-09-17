#This script will parse url's from the file, and visit it one by one and display the status code for that url.
#!/bin/bash
input="FilePATH"
while IFS= read -r line
do
  echo "$line"
  curl -I $line 2>/dev/null | head -n 1 | cut -d$' ' -f2 
  echo "------------------------------"
done < "$input"
