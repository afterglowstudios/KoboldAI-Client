apt update
apt install -y nano screen sudo

#enable git lfs
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
git lfs install

#get pygmalion
if [ ! -d "/workspace/KoboldAI-Client/models/pygmalion-6b" ]; then
    echo "Directory does not exist"
    git clone https://huggingface.co/PygmalionAI/pygmalion-6b /workspace/KoboldAI-Client
fi

#copy post_start.sh to root
cp post_start.sh /
echo "setup done. running post_start.sh...."
cd / && ./post_start.sh &