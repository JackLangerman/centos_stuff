# download software
sudo yum install git -y 
sudo yum install wget -y 
sudo yum install bzip2 -y

# miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda

# bash Miniconda3-latest-Linux-x86_64.sh
# ssh-keygen -t rsa -b 4096 -C 'autogenerated_key_from_centossetup' -f ~/.ssh/gitlab-autogenerated_key_from_centossetup
# ssh-keygen -t ecdsa -C 'autogenerated_key_from_centossetup'
#less ~/.ssh/gitlab-tv-key-rsa.pu
# less ~/.ssh/id_ecdsa.pub

# create ssh key pair
echo 'creating ssh key pair'
ssh-keygen -t ecdsa -q -N "" -f ~/.ssh/id_ecdsa -C autogenerated_key_from_centossetup
printf '\n\n\n\n----------------------------------------\n\nplease copy public key to Git: \n\nhttps://gitlab.com/profile/keys \nhttps://github.com/settings/keys \n\n'
cat ~/.ssh/id_ecdsa.pub
printf '\n'

read -n 1 -s -r -p "Press any key to continue"


touch ~/.ssh/config
#printf "\n\nHost gitlab.com\n  Preferredauthentications publickey\n  IdentityFile ~/.ssh/gitlab-tv-key-rsa\n " >> ~/.ssh/config
printf "\n\nHost *\n  Preferredauthentications publickey\n  IdentityFile ~/.ssh/id_ecdsa\n " >> ~/.ssh/config
chmod 700 ~/.ssh
chmod 700 ~/.ssh/config
# chmod 644 ~/.ssh/gitlab-tv-key-rsa.pub
# chmod 600 ~/.ssh/gitlab-tv-key-rsa
chmod 644 ~/.ssh/id_ecdsa.pub
chmod 600 ~/.ssh/id_ecdsa
#git clone git@gitlab.com:JackLangerman/tv_show_understanding.git
#cd tv_show_understanding

echo ". ~/miniconda/etc/profile.d/conda.sh" >> ~/.bashrc
. ~/.bashrc
# conda env create
# conda env update -f environment.yml
