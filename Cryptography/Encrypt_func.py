from cryptography.fernet import Fernet
import hashlib
import sys
from sys import exit

#print ("USAGE: python filename.py password text_for_encryption")
secret=str(sys.argv[1])
pass_hash_result=hashlib.md5(secret.encode())

result="202cb962ac59075b964b07152d234b70"
if result == pass_hash_result.hexdigest():
    print ("Identity Verfied \n")
else:
    print ("Don't Play with this \n")
    sys.exit()


key = Fernet.generate_key()

fkey = open("file_key.txt",'rb')

key = fkey.read()
cipher = Fernet(key)

message=str(sys.argv[2])
#encrypted_text = cipher.encrypt(b'this is my secret message')

encrypted_text = cipher.encrypt(message)

print(encrypted_text)

