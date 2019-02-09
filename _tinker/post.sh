export PATH=/home/annamaa/python_stuff/sphinxenv/bin:$PATH
echo $PATH
read -p "Enter post title: " input
tinker --post "$input"

