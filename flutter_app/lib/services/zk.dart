import 'dart:developer';

import 'package:cryptography/cryptography.dart';

Future<void> crypto() async {
  // Choose the cipher
  final algorithm = AesGcm.with256bits();

  // Generate a random secret key.
  final secretKey = await algorithm.newSecretKey();
  final secretKeyBytes = await secretKey.extractBytes();
  log('Secret key: $secretKeyBytes');

  // Encrypt
  final secretBox = await algorithm.encryptString(
    'Hello!',
    secretKey: secretKey,
  );
  log('Nonce: ${secretBox.nonce}'); // Randomly generated nonce
  log('Ciphertext: ${secretBox.cipherText}'); // Encrypted message
  log('MAC: ${secretBox.mac}'); // Message authentication code

  // If you are sending the secretBox somewhere, you can concatenate all parts of it:
  final concatenatedBytes = secretBox.concatenation();
  log('All three parts concatenated: $concatenatedBytes');

  // Decrypt
  final clearText = await algorithm.decryptString(
    secretBox,
    secretKey: secretKey,
  );
  log('Cleartext: $clearText'); // Hello!
}
