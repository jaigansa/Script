#!/bin/bash

#This bash Script Create Folder Structure Learning Process

#prodir by Jaigansa.


clear

echo Graphics Project Title
echo ====================================
# user input some Text or Number for tile of the Project
read -p "Title : " name

echo ====================================

a=$name

b=$(date +"_%b_%Y")

c="${a}${b}"


#Error

function ERROR(){
        echo "Yennamo Error!"
}


#user select options

select app in ALL Blender Inkscape Gimp Krita Synfig_Studio Kdenlive 

do


# make dir

function MAKEDIR(){

if [ $app == ALL ]; then
        echo "Graphics Project "
        mkdir "$c"
        cd ./"$c" || exit
        mkdir -p FINAL/{PUBLISH/{PORTRAIT,LANDSCAPE,SQUARE},BACKUPS,SUBMIT}  PRODUCTION/{EXPORT,ASSETS/{Blender,Inkscape,Gimp,Krita,Synfig_Studio,Kdenlive}} LIBRARY/{RENDER,REFERENCE}
        echo "${PWD##*/}"

elif [ $app == Blender ]; then
        echo "Graphics Project Blender"
        mkdir "$c"
        cd ./"$c" || exit
        mkdir -p FINAL/{PUBLISH/{PORTRAIT,LANDSCAPE,SQUARE},BACKUPS,SUBMIT}  PRODUCTION/{EXPORT,ASSETS/Blender} LIBRARY/{RENDER,REFERENCE}
        echo "${PWD##*/}"
        
        
elif [ $app == Inkscape ]; then
        echo "Graphics Project Inkscape"
        mkdir "$c"
        cd ./"$c" || exit
        mkdir -p FINAL/{PUBLISH/{PORTRAIT,LANDSCAPE,SQUARE},BACKUPS,SUBMIT}  PRODUCTION/{EXPORT,ASSETS/Inkscape} LIBRARY/{RENDER,REFERENCE}
                
        echo "${PWD##*/}"
        
        
        
elif [ $app == Gimp ]; then
        echo "Graphics Project Gimp"
        mkdir "$c"
        cd ./"$c" || exit
        mkdir -p FINAL/{PUBLISH/{PORTRAIT,LANDSCAPE,SQUARE},BACKUPS,SUBMIT}  PRODUCTION/{EXPORT,ASSETS/Gimp} LIBRARY/{RENDER,REFERENCE}
        echo "${PWD##*/}"
        
        
        
elif [ $app == Krita ]; then
        echo "Graphics Project Krita"
        mkdir "$c"
        cd ./"$c" || exit
        mkdir -p FINAL/{PUBLISH/{PORTRAIT,LANDSCAPE,SQUARE},BACKUPS,SUBMIT}  PRODUCTION/{EXPORT,ASSETS/Krita} LIBRARY/{RENDER,REFERENCE}
        echo "${PWD##*/}"
        
        
        
elif [ $app == Synfig_Studio ]; then
        echo "Graphics Project Synsig_Studio"
        mkdir "$c"
        cd ./"$c" || exit
        mkdir -p FINAL/{PUBLISH/{PORTRAIT,LANDSCAPE,SQUARE},BACKUPS,SUBMIT}  PRODUCTION/{EXPORT,ASSETS/Synfig_Studio} LIBRARY/{RENDER,REFERENCE}           
        echo "${PWD##*/}"
        
        
        
elif [ $app == Kdenlive ]; then
        echo "Graphics Project Kdenlive"
        mkdir "$c"
        cd ./"$c" || exit
        mkdir -p FINAL/{PUBLISH/{PORTRAIT,LANDSCAPE,SQUARE},BACKUPS,SUBMIT}  PRODUCTION/{EXPORT,ASSETS/Kdenlive} LIBRARY/{RENDER,REFERENCE}
        echo "${PWD##*/}"
else
    ERROR    
fi

}


MAKEDIR






#Check dir

dir="$c"
 
if [[ -d "$dir" ]]; then

        echo "Folder Sucessfully Create - $dir"

fi

#Current dir


exit

done





