WORKSPACE="$HOME/dotfiles"
#clear gitconfig 
truncate -s 0 $WORKSPACE/.gitconfig

#configuring gitconfig
echo "[user]" >> $WORKSPACE/.gitconfig
echo -e "\t name = challahalla" >> $WORKSPACE/.gitconfig
if [ "$SPIN" ]; then
  echo -e "\t email = sid.challa@shopify.com" >>$WORKSPACE/.gitconfig
else
  echo -e "\t email = sc5455@nyu.edu" >> $WORKSPACE/.gitconfig
fi
