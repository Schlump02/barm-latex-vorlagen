# This script automatically removes old helper files created by the LaTeX engine.
# It removes all files ending in the strings in the array below.
# To run the script, simply double click it or start it via command line.

# Array of file endings to match
file_endings=(".bbl" ".blg" ".bcf" ".aux" ".synctex" ".synctex(busy)" ".lof" ".log" ".lot" ".out" ".xml" ".gz" ".toc" ".fdb_latexmk" ".fls" ".app")

# Directory where files are located
directory="."

# Iterate through the array and remove files
for ending in "${file_endings[@]}"; do
  echo "now removing files ending in $ending"
  find "$directory" -type f -name "*$ending" -exec rm {} \;
done

echo ""
echo "Files with specified endings removed successfully."
read -p "Press any key to exit..."