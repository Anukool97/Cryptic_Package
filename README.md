# IN THIS PROJECT I HAVE ADDED MY MD5 hashing that verifies the secret key from the user , and then only will be allowed to run the decrypt or encrypt python program which uses Python Fernet encryption module. Note, the secret key provided by the user can be asked at time of login in .profile or .bashrc file itself. #


#  The fernet module of the cryptography package has inbuilt functions for the generation of the key, encryption of plaintext into ciphertext, and decryption of ciphertext into plaintext using the encrypt and decrypt methods respectively. The fernet module guarantees that data encrypted using it cannot be further manipulated or read without the key. #


### Methods Used:  ###

### generate_key() : This method generates a new fernet key. The key must be kept safe as it is the most important component to decrypt the ciphertext. If the key is lost then the user can no longer decrypt the message. Also if an intruder or hacker gets access to the key they can not only read the data but also forge the data.
### encrypt(data) : It encrypts data passed as a parameter to the method. The outcome of this encryption is known as a “Fernet token” which is basically the ciphertext. The encrypted token also contains the current timestamp when it was generated in plaintext. The encrypt method throws an exception if the data is not in bytes.

### Parameters: ###

## data (bytes) – The plaintext to be encrypted.
## Return value: A ciphertext that cannot be read or altered without the key. It is URL-safe base64-encoded and is referred to as Fernet token.

## decrypt(token,ttl=None) : This method decrypts the Fernet token passed as a parameter to the method. On successful decryption the original plaintext is obtained as a result, otherwise an exception is thrown.

Parameters:

token (bytes) – The Fernet token (ciphertext) is passed for decryption.
ttl (int) – Optionally, one may provide an integer as second parameter in the decrypt method. The ttl denotes the time about how long a token is valid. If the token is older than ttl seconds (from the time it was originally created) an exception is thrown. If ttl is not passed as a parameter, then age of the token is not considered. If the token is somehow invalid, an exception is thrown.
Returns value:  Returns the original plaintext.
