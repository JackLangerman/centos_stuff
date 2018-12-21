sudo yum install git
sudo yum install wget
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
sudo yum install bzip2
bash Miniconda3-latest-Linux-x86_64.sh
ssh-keygen -t rsa -b 4096 -C 'autogenerated_key_from_TV_setup$USER' -f ~/.ssh/gitlab-tv-key-rsa
less ~/.ssh/gitlab-tv-key-rsa.pub
touch ~/.ssh/config
printf "\n\nHost gitlab.com\n  Preferredauthentications publickey\n  IdentityFile ~/.ssh/gitlab-tv-key-rsa\n " >> ~/.ssh/config
chmod 700 ~/.ssh
chmod 700 ~/.ssh/config
chmod 644 ~/.ssh/gitlab-tv-key-rsa.pub
chmod 600 ~/.ssh/gitlab-tv-key-rsa
git clone git@gitlab.com:JackLangerman/tv_show_understanding.git
cd tv_show_understanding
. ~/.bashrc
conda env create
conda env update -f environment.yml
