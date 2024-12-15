#!/bin/sh
HOME=/Users/wmelo/RaWi_With_Documentation
for i in `ls $HOME/rico`;
	do
		echo $i
		ln -s "$HOME/rico/$i" "$HOME/webapp/gui2rapp/staticfiles/resources/$i"
	done
#
# word 2 vec
#
ln -s "$HOME/word/word2vec-master" "$HOME/webapp/gui2rapp/staticfiles/resources/word2vec"

#
# BERT
#
mkdir "$HOME/resources"
cd "$HOME/resources"
ln -s "$HOME/embeddings" "$HOME/resources/embeddings"


