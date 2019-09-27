echo "Starting setup"

if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Brew is installed. Skip brew installation."
fi

if test ! $(which python3); then
    echo "Installing python3..."
    brew install python@3
else
    echo "Python3 is installed. Skip python3 installation."
fi

if test ! $(which virtualenv); then
    echo "Installing virtualenv via pip3..."
    pip3 install virtualenv
else
    echo "Virtualenv is installed. Skip virtualenv installation."
fi

if [ ! -d venv ]
then
    virtualenv venv --python=python3
fi

. ./venv/bin/activate

pip3 install -r requirements.txt
