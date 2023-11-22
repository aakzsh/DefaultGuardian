import 'dart:developer';

import 'package:cryptography/cryptography.dart';

class ZK {
  final algorithm = AesGcm.with256bits();

  Future<SecretKey> generatekey() async {
    // Generate a random secret key.
    final secretKey = await algorithm.newSecretKey();
    final secretKeyBytes = await secretKey.extractBytes();
    log('Secret key: $secretKeyBytes');
    return secretKey;
  }

  Future<int> encryptscore(userStats, amount) async {
    userStats = {
      "balance": 493939399992,
      "future_payments": 2354202,
      "confidence_score": 90,
    };
    final secretKey = await generatekey();

    // the zk score that would ideally be calculated on the sender's side and then signed cryptographically
    final double calculatedScore = userStats["confidence_score"] * 0.4 +
        (amount > userStats["confidence_score"] ? (20 * 0.5) : (100 * 0.5)) +
        (amount > userStats["confidence_score"] + userStats["future_payments"]
            ? (0 * 0.1)
            : (100 * 0.1));

    // Encrypt
    final secretBox = await algorithm.encryptString(
      calculatedScore.round().toString(),
      secretKey: secretKey,
    );
    log('Nonce: ${secretBox.nonce}'); // Randomly generated nonce
    log('Ciphertext: ${secretBox.cipherText}'); // Encrypted message
    log('MAC: ${secretBox.mac}'); // Message authentication code

    // If you are sending the secretBox somewhere, you can concatenate all parts of it:
    final concatenatedBytes = secretBox.concatenation();
    log('All three parts concatenated: $concatenatedBytes');
    final score = await decryptscore(secretBox, secretKey);
    return int.parse(score);
  }

  Future<String> decryptscore(secretBox, secretKey) async {
    // Decrypt
    final clearText = await algorithm.decryptString(
      secretBox,
      secretKey: secretKey,
    );
    log('Cleartext: $clearText'); // Hello!
    return clearText;
  }
}
