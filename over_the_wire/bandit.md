

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
```
nmap localhost -p 31000-32000
nmap localhost -p 31046,31518,31691,31790,31960 -sV -T5
chmod 600 rsafile
ssh -i rsafile bandit17@localhost -p 2220
```

Level 17
```
diff passwords.new passwords.old
```

Level 18
```
ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme
```

Level 19
```
./bandit20-do cat /etc/bandit_pass/bandit20
```

Level 20
```
nc -lvp 2222
./suconnect 2222
```

Level 23
```
touch script.sh
chmod 777 script.sh
cp script.sh /var/spool/bandit24/foo/script.sh
```

```
#!/bin/bash

cat /etc/bandit_pass/bandit24 > /tmp/sam1012-2/bandit24_password
```

Level 24
```
touch script.sh
chmod 777 script.sh
```

```
#!/bin/bash

pass=VAfGXJ1PBSsPSnvsjI8p759leLZ9GGar

for pin in {0000..9999}; do
    echo $pass $pin
done | nc localhost 30002 >> result &
```

Level 25
```
cat /etc/passwd | grep bandit26
```

Level 27
```
YnQpBuifNMas1hcUFk70ZmqkhUU2EuaS
git clone ssh://bandit27-git@localhost:2220/home/bandit27-git/repo
```

Level 28
AVanL161y9rsbcJIsFHuw35rjaOM19nR
```
git clone ssh://bandit28-git@localhost:2220/home/bandit28-git/repo
cd repo
git log
git checkout bdf3099fb1fb05faa29e80ea79d9db1e29d6c9b9
cat README.md
```

Level 29
```
git clone ssh://bandit29-git@localhost:2220/home/bandit29-git/repo
tQKvmcwNYcFS6vmPHIUSI3ShmsrQZK8S
```

Level 30
```
git clone ssh://bandit30-git@localhost:2220/home/bandit30-git/repo
git tag
git show secret
```



