#gpg --list-secret-keys --keyid-format=long
#git config --global user.signingkey XXXXX
#brew install pinentry-mac
#echo "pinentry-program $(which pinentry-mac)" >> ~/.gnupg/gpg-agent.conf
#killall gpg-agent

nu doctor run --git 
nu projects clone nudev
nu projects update nudev
cd $NU_HOME/nudev
./runstep.sh github_gpg_keys.sh

