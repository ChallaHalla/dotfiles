#clear gitconfig 
truncate -s 0 ../.gitconfig

#configuring gitconfig
echo "[user]" >> ../.gitconfig
echo "\t name = challahalla" >> ../.gitconfig
if [ "$SPIN" ]; then
  echo "\t email = sid.challa@shopify.com" >> ../.gitconfig
else
  echo "\t email = sc5455@nyu.edu" >> ../.gitconfig
fi
