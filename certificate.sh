rm -rf /Users/otavio.fevereiro/dev/nu/.nu/certificates/
echo "export PATH="/usr/local/opt/openssl@1.1/bin:$PATH""
~/.bash_profile
echo "export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib""
~/.bash_profile
echo "export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include""
~/.bash_profile
source ~/.bash_profile
nu cert setup --env prod