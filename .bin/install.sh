git clone --bare git@github.com:thejunglejane/monogram.git $HOME/.monogram
function monogram {
   $(which git) --git-dir=$HOME/.monogram/ --work-tree=$HOME $@
}
mkdir -p .monogram-backup
monogram checkout
if [ $? = 0 ]; then
  echo "Checked out monogram.";
  else
    echo "Backing up pre-existing dotfiles.";
    monogram checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .monogram-backup/{}
fi;
monogram checkout
monogram config status.showUntrackedFiles no
