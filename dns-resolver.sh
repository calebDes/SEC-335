Network_Prefix=$1
DNS=$2

for num in $(seq 1 254);
do
nslookup $1.$num $DNS | grep name
done
