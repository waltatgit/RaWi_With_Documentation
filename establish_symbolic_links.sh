#!/bin/sh
HOME=/Users/wmelo/RaWi_With_Documentation
for i in `ls $HOME/rico`;
	do
		echo $i
		ln -s "$HOME/rico/$i" "$HOME/webapp/gui2rapp/staticfiles/resources/$i"
                ln -s "$HOME/rico/$i" "$HOME/gui2r/gui2r/resources/rico-guis/$i"


	done
#
# word 2 vec
#
ln -s "$HOME/word/word2vec-master" "$HOME/webapp/gui2rapp/staticfiles/resources/word2vec"
touch "$HOME/gui2r/gui2r/resources/word2vec" && rm -r "$HOME/gui2r/gui2r/resources/word2vec"
ln -s "$HOME/word/word2vec-master" "$HOME/gui2r/gui2r/resources/word2vec"
#
# BERT
#
mkdir "$HOME/resources"
cd "$HOME/resources"
ln -s "$HOME/embeddings" "$HOME/resources/embeddings"
touch  "$HOME/gui2r/gui2r/resources/bert-base" && rm -r "$HOME/gui2r/gui2r/resources/bert-base"
ln -s "$HOME/embeddings" "$HOME/gui2r/gui2r/resources/bert-base"

#
# preproc
#
mkdir "$HOME/webapp/rawi/../gui2rapp/staticfiles/resources/preproc_text

