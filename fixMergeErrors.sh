#!/usr/bin/bash
filename="$1"
sed -i '' '/>>>>>.*/d' "$filename"; 
sed -i '' '/<<<<<.*/d' "$filename"; 
sed -i '' '/====.*/d' "$filename"; 