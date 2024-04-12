A=--powersupply-host
B=172.16.32.141
C=--port
D=1238
echo Remaining arguments: "$@"
python2 client.py $A $B $C $D "$@"
