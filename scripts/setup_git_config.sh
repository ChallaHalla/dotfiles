WORKSPACE="$HOME/dotfiles"
#clear gitconfig 
truncate -s 0 $WORKSPACE/.gitconfig

#configuring gitconfig
echo "[user]" >> $WORKSPACE/.gitconfig
echo "\t name = challahalla" >> $WORKSPACE/.gitconfig
if [ "$SPIN" ]; then
  echo "\t email = sid.challa@shopify.com" >>$WORKSPACE/.gitconfig
else
  echo "\t email = sc5455@nyu.edu" >> $WORKSPACE/.gitconfig
fi
