nu doctor run --git 

#listar ssh
ls "${HOME}/.ssh/id_"*
ssh-keygen -E sha256 -l -f "${HOME}/.ssh/id_ed25519.pub"
ssh-keygen -E sha256 -l -f "${HOME}/.ssh/id_rsa.pub"

#cadastrar nova ssh
git_useremail=$(git config --global user.email)
ssh_dir="${HOME}/.ssh"
ssh_key_file="${ssh_dir}/id_rsa"
ssh-keygen -t rsa -b 4096 -C "${git_useremail}" -f "${ssh_key_file}"
/usr/bin/ssh-add -K "${ssh_key_file}"
#obter o valor do ssh e cadastrar no github
cat "${ssh_key_file}.pub"


#NOVO METODO
ssh-keygen -t ed25519 -C "${git_useremail}"
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
#obter o valor do ssh e cadastrar no github
cat ~/.ssh/id_ed25519.pub

#testar se conseguiu se conectar
ssh -T git@github.