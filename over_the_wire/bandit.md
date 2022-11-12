

Level 0
```
ssh bandit0@bandit.labs.overthewire.org -p 2220
```

Level 4
```
for f in $(ls); do file ./$f; done
```

Level 5
```
find . -size 1033c
```

Level 6
```
find / -size 33c -user bandit7 -group bandit6 2>/dev/null
```

Level 7
```
wc -l data.txt
cat data.txt | grep "millionth"
```

Level 8
```
cat data.txt | sort | uniq -c | grep -v 10
```

Level 9
```
strings data.txt | grep ===
```

Level 10
```
cat data.txt | base64 -d
```

Level 11
```
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

Level 12
```
cat data.txt | xxd -r > hexdump
mv hexdump hexdump.gz
gzip -d hexdump.gz
mv hexdump hexdump.bz2
bzip2 -d hexdump.bz2
mv hexdump hexdump.gz
gzip -d hexdump.gz
tar -xvf hexdump
tar -xvf data5.bin
mv data6.bin data6.bin.bz2
bzip2 -d data6.bin.bz2
tar -xvf data6.bin
mv data8.bin data8.bin.gz
gzip -d data8.bin.gz
cat data8.bin
```

Level 13
```
ssh bandit14@localhost -p 2220 -i sshkey.private
```

Level 14
```
nc localhost 30000
```

Level 15
```
openssl s_client -connect localhost:30001
```

Level 16
JQttfApK4SeyHwDlI9SXGR50qclOAil1

