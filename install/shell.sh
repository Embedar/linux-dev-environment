#!/usr/bin/env bash

set -e

echo "========================================="
echo "Installing Starship..."
echo "========================================="

if ! command -v starship >/dev/null 2>&1
then

    curl -sS https://starship.rs/install.sh | sh -s -- -y

else

    echo "Starship already installed."

fi

echo ""
echo "Configuring Bash..."

if ! grep -q "starship init bash" ~/.bashrc
then
    echo '' >> ~/.bashrc
    echo '# Starship' >> ~/.bashrc
    echo 'eval "$(starship init bash)"' >> ~/.bashrc
fi

if ! grep -q "bash_completion" ~/.bashrc
then
cat <<'EOF' >> ~/.bashrc

# Bash Completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
fi

EOF
fi

echo ""
echo "Shell configured."
