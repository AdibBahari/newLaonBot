#!/data/data/com.termux/files/usr/bin/env bash
python - <<'PY'
from cryptography.fernet import Fernet
k = Fernet.generate_key()
open("fernet.key","wb").write(k)
print("fernet.key created")
PY
chmod 600 fernet.key
echo "FERNET key generated (fernet.key)"