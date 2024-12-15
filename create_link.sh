#!/bin/sh
HOME=/Users/wmelo/RaWi_With_Documentation

echo 'processing combined...'
for i in `find $HOME/rico/combined -type f `;
do 
#	echo `basename $i`
	rm -f -- "$HOME/gui2r/gui2r/resources/`basename $i`" 
	rm -f -- "$HOME/webapp/gui2rapp/staticfiles/resources/`basename $i`" 
        rm -f -- "$HOME/webapp/gui2rapp/static/resources/`basename $i`" 


        ln -s $i "$HOME/gui2r/gui2r/resources/`basename $i`" 
	ln -s $i "$HOME/webapp/gui2rapp/staticfiles/resources/`basename $i`"
	ln -s $i "$HOME/webapp/gui2rapp/static/resources/`basename $i`"

done

echo 'processing semantic annotations ...'
for i in `find $HOME/rico/semantic_annotations -type f `;
do
#        echo `basename $i`
        rm -f -- "$HOME/gui2r/gui2r/resources/`basename $i`" 
        rm -f -- "$HOME/webapp/gui2rapp/staticfiles/resources/`basename $i`" 
        rm -f -- "$HOME/webapp/gui2rapp/static/resources/`basename $i`" 

        ln -s $i "$HOME/gui2r/gui2r/resources/`basename $i`"
        ln -s $i "$HOME/webapp/gui2rapp/staticfiles/resources/`basename $i`"
        ln -s $i "$HOME/webapp/gui2rapp/static/resources/`basename $i`"

done

echo 'processing ui layout vectors ...'
for i in `find $HOME/rico/ui_layout_vectors -type f `;
do
#        echo `basename $i`
        rm -f -- "$HOME/gui2r/gui2r/resources/`basename $i`" 
        rm -f -- "$HOME/webapp/gui2rapp/staticfiles/resources/`basename $i`" 
        rm -f -- "$HOME/webapp/gui2rapp/static/resources/`basename $i`" 

        ln -s $i "$HOME/gui2r/gui2r/resources/`basename $i`"
        ln -s $i "$HOME/webapp/gui2rapp/staticfiles/resources/`basename $i`"
	ln -s $i "$HOME/webapp/gui2rapp/static/resources/`basename $i`"

done

echo 'processing rico...'
for i in `find $HOME/rico -type f `;
do
#        echo `basename $i`
        rm -f -- "$HOME/gui2r/gui2r/resources/`basename $i`" 
        rm -f -- "$HOME/webapp/gui2rapp/staticfiles/resources/`basename $i`" 
        rm -f -- "$HOME/webapp/gui2rapp/static/resources/`basename $i`" 

        ln -s $i "$HOME/gui2r/gui2r/resources/`basename $i`"
        ln -s $i "$HOME/webapp/gui2rapp/staticfiles/resources/`basename $i`"
        ln -s $i "$HOME/webapp/gui2rapp/static/resources/`basename $i`"

done 
