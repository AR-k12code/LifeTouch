# Rename LifeTouch Photos

## Download the students.csv
Cognos > Team Content > Student Management System > _Shared Data File Reports > Clever Files > students

Save the CSV in this folder.

## Create a new download format
- Go to the LifeTouch Portal
- Image & Data Management
- Select Students, Active Only.
- Click on All above the first picture
- In the Blue Available Action box click on Download

- If you've already created the format before then select it from the list. Otherwise...

- Create a New Format
- Image file name: "````<First Name><Last Name>````"
- Leave everything else default.
- Give it a fun name.
- Save Format

- Select Students, Active Only.
- Click on All above the first picture
- In the Blue Available Action box click on Download
- Select your new Format.
- Click on Download

Extract those pictures into the images folder.

# Run the Script
````
.\Rename_Photos.ps1
````

# Take your Images
Take your renamed images and upload them to your webserver.

Profit?