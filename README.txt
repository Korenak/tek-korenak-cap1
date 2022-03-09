# tek-korenak-cap1
TEK Capstone1 Project 


to begin(after download and unzip)
Navigate to korenak_andrew_cap1
do not stop at tek-korenak-cap1 as this is not where the files will successfully run.
     Create a new conda virtual environement
conda create -n venv flask   #name venv whatever you want
conda activate venv #use whatever you named it
pip install -r requirements.txt

!!!!!
You will have to change the config.py page to reflect the path of your mysql
server
!!!!!
Many of the tables were created within MySQL workbench you can open and then run these sql files in the schema folder to get my tables with all connections and information

python app.py once you are set up with all the SQL files

you can navigate to http://127.0.0.1:5000/ to view the site you just launched

I put the jupyter notebook file in the repository as well, so you can take a look at that if you like.

The excel spreadsheet is also in there for perusal. The final sheet of the workbook has my functioning pivot tables. At some point my connections crashed out and I had to re-make things.
