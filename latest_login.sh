USER_ID=$(id -u)
USUARIO=$(cat /etc/passwd | grep $USER_ID | cut -d ":" -f1)
COMPLETE_NAME=$(cat /etc/passwd | grep $USER_ID | cut -d ":" -f5 | cut -d "," -f1)
DISK_USER=$(du -sh ~ | cut -f1)

LAST_LOGIN_TITLE=$(lastlog | head -n1)
LAST_LOGIN=$(lastlog | grep usuario1)

echo "Subject: Relatorio login"
echo "==========================================================================================================="
echo "Usuario: $USUARIO"
echo ""
echo "UID: $USER_ID"
echo "Nome ou Descricao: $COMPLETE_NAME"
echo "Total Usado: $DISK_USER"
echo ""
echo "Ultimo Login"
echo "$LAST_LOGIN_TITLE"
echo "$LAST_LOGIN"
echo "==========================================================================================================="