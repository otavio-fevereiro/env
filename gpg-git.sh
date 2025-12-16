nu doctor run --git 
nu projects clone nudev
nu projects update nudev
cd $NU_HOME/nudev
./runstep.sh github_gpg_keys.sh


ssh-keygen -t ed25519-sk -C "otavio.fevereiro@nubank.com.br"
ssh-keygen -t ecdsa-sk -C "otavio.fevereiro@nubank.com.br"