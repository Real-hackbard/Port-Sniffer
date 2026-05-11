


# Port-Sniffer

</br>

![Compiler](https://github.com/user-attachments/assets/a916143d-3f1b-4e1f-b1e0-1067ef9e0401) <img src="https://github.com/user-attachments/assets/80e86115-099a-4a1d-b4f1-760f374557b5" />  
![Components](https://github.com/user-attachments/assets/d6a7a7a4-f10e-4df1-9c4f-b4a1a8db7f0e) <img src="https://github.com/user-attachments/assets/ef1a48ea-f60c-44bd-93ad-50f68759eed1" /> <img src="https://github.com/user-attachments/assets/f865c972-a0ad-410e-96d1-d94bcb901db0" /> <img src="https://github.com/user-attachments/assets/f04e6cf5-9ca6-4d50-a8cb-dd0d6e545957" />  
![Description](https://github.com/user-attachments/assets/dbf330e0-633c-4b31-a0ef-b1edb9ed5aa7) <img src="https://github.com/user-attachments/assets/2cc3f285-af9e-418f-ac3a-9f6b6972db84" />  
![Last Update](https://github.com/user-attachments/assets/e1d05f21-2a01-4ecf-94f3-b7bdff4d44dd) <img src="https://github.com/user-attachments/assets/2b7dff0b-8b99-4887-9bb3-b200f1d89bab" />  
![License](https://github.com/user-attachments/assets/ff71a38b-8813-4a79-8774-09a2f3893b48) ![Freeware](https://github.com/user-attachments/assets/1fea2bbf-b296-4152-badd-e1cdae115c43)  

</br>

Many local applications currently in use communicate with internet servers in the background. This occurs for a variety of reasons. While this communication can take many forms, it often involves the transmission of system-critical—or even personal—data. Anyone wishing to block this entire communication stream, or to identify the specific ports and addresses with which these background applications are exchanging data, can utilize this example. The identified addresses must then subsequently be entered into the system's "hosts" file.

</br>

<img src="https://github.com/user-attachments/assets/977159df-8f1c-4535-ae79-40eb3330580b" />

</br>
</br>

# Use:
Start the sniffer, then launch your program; Port Sniffer will now catalog all the Ports & IP addresses your program has connected to—which might look something like this:

```25.10.2022 - 19:25:17  Local :  192.168.1.127 : 49685 => Destination : 18.159.137.176 : 443```

The program connected to server ```18.159.137.176``` on port ```443``` (TCP) using the network IP ```192.168.1.127``` and port ```49685```.

Now, enter the target IP ```18.159.137.176``` into the "hosts" file, which must look like this:

* ```127.0.0.1  18.159.137.176```  
or  
* ```0.0.0.0  18.159.137.176```

Once you have completed the entry, your program will no longer be able to connect to the target server.





