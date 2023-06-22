set -eu

export PYTHONUNBUFFERED=true

VIRTUALENV=.data/venv

if [ ! -e "$VIRTUALENV ]; then
    python3 -m venv $VIRTUALENV
fi

if [ ! -e "$VIRTUALENV/bin/pip ]; then
    curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | $VIRTUALENV
fi

$VIRTUALENV/bin/pip install -r requirements.txt

$VIRTUALENV/bin/python3 app.py
Footer
