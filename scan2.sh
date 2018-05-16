>ping
if[ -e ./ping2 ] || > ping2
net="10.7.180."
for (( i=110; i<112; i++ ))
do
  ip="$net$i"
  ping -c1 "$ip" &>>/dev/null && echo "$ip +" >> ping || echo "$ip -" >> ping
done

diff ~/ping ~/ping2 &>> /dev/null || echo "zmina e" | mail -s "subj: " bodyasafff@gmail.com
cp ping ping2
