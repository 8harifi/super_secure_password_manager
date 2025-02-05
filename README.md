
---

# PowerShell Password Manager

This PowerShell-based password manager allows you to securely encrypt and decrypt text (such as passwords) using AES encryption. It consists of three main scripts: `password_manager.ps1` for encryption and decryption, `read.ps1` for reading and decrypting the content from a file, and `rewrite.ps1` for writing new encrypted content to a file.

## Features:
- Encrypt and decrypt text using AES encryption with CBC mode.
- Customizable key length for encryption.
- Simple interface for managing encrypted passwords or other sensitive data.

## Installation

1. Clone or download the project files to your local machine.

2. Make sure you have PowerShell (version 5.1 or higher) installed.

3. Execute the PowerShell scripts as needed (e.g., `read.ps1` to read an encrypted file, `rewrite.ps1` to update encrypted content).

## Scripts Overview

### `password_manager.ps1`
This script contains two functions:
- **`encrypt`**: Encrypts a given string using a provided key.
- **`decrypt`**: Decrypts an encrypted string using a provided key.

Both functions use AES encryption with CBC mode and PKCS7 padding.

### `read.ps1`
This script is used to read and decrypt a file. The user is prompted to provide:
- A **file name** containing encrypted content.
- A **key** to decrypt the content.

The decrypted content is then displayed in the console.

### `rewrite.ps1`
This script allows the user to input new text, which is then encrypted and saved to the specified file. The user is prompted to:
- Enter a **file name** (the file where encrypted text will be saved).
- Input the **new text** (multiple lines until "exit" is typed).
- Provide a **key** for encryption.

The encrypted content is then written to the specified file.

## Usage

### Encrypting Content:
1. Run `rewrite.ps1`.
2. Enter the **file name** where the encrypted text will be stored.
3. Type the **new text** that you want to encrypt, pressing Enter after each line. Type `exit` when you're done.
4. Provide the **key** for encryption.
5. The encrypted content is saved to the file.

### Decrypting Content:
1. Run `read.ps1`.
2. Enter the **file name** of the encrypted file.
3. Provide the **key** to decrypt the content.
4. The decrypted content will be displayed in the console.

## Example:

**To encrypt and save new text:**

```bash
powershell .\rewrite.ps1
[?] File Name: example.txt
[?] New Text:
mySecurePassword123
exit
[?] Key: secretKey123
```

The encrypted text is saved to `example.txt`.

**To decrypt and view the content:**

```bash
powershell .\read.ps1
[?] File Name: example.txt
[?] Key: secretKey123
```

The decrypted content (`mySecurePassword123`) is displayed in the console.

## License

This project is licensed under the MIT License - see the [LICENSE]([LICENSE](https://github.com/8harifi/super_secure_password_manager/blob/main/LICENSE)) file for details.

---

