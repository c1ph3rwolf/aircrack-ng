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
│   │   ├── 1. hacked-u-01.cap
│   │   ├── 2. hacked-u-02.cap
│   │   ├── 3. handshake_SmartHome_A8-DA-0C-85-A0-6F_2023-06-29T05-28-31.cap
│   │   ├── 4. README.md
│   │   ├── Enter the index number of the file:: 2
│   │   ├──  [ Selected ] : hacked-u-02.cap
│   │   ├── You have Selected (Handshake): /home/cipher/hs/hacked-u-02.cap
├── sudo aircrack-ng -w /usr/share/wordlists/wifite.txt /home/cipher/hs/hacked-u-02.cap
├── Crack WPA/WPA2 WiFi Handshake Now (y/n) : : y                                                                                             
│   ├── Cracking Handshake using aircrack-ng
Reading packets, please wait...                                                                                                               
Opening /home/cipher/hs/hacked-u-02.cap
Resetting EAPOL Handshake decoder state.
Read 7657 packets.

   #  BSSID              ESSID                     Encryption

   1  7A:0C:B8:C9:37:F9  Hack Me If You Can!       WPA (1 handshake)

Choosing first network as target.

Reading packets, please wait...
Opening /home/cipher/hs/hacked-u-02.cap
Resetting EAPOL Handshake decoder state.
Read 7657 packets.

1 potential targets


                               Aircrack-ng 1.7 

      [00:00:02] 2200/203809 keys tested (1018.76 k/s) 

      Time left: 3 minutes, 17 seconds                           1.08%

                       Current passphrase: chrissie                   


      Master Key     : F7 91 42 9D A1 9B B6 7C A2 ED BF EC 16 E6 3B 56 
                       36 E4 E7 23 08 C7 1F F4 36 52 9F 85 58 98 03 66 

      Transient Key  : A6 D9 14 3B 4A 30 A5 1A 22 87 CD 59 24 B2 05 D4 
                       2D EA BE 76 6B 0F 6E D0 D8 30 7A C8 7A A3 07 C5 
                       53 FF 4E 56 A7 07 7F 38 2E CE 25 0A 14 0B A3 51 
                       92 82 C8 43 41 92 AB 61 E4 DB 75 16 3C C7 6E F5 

      EAPOL HMAC     : FC F7 2C 3C 81 20 BA 90 A6 B4 8C D7 19 CC E2 5D 
^C
Quitting aircrack-ng...

┌──(superuser㉿)-[/home/cipher/github/aircrack-ps1]
└─$ PS>


```
