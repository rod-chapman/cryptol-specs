This repository contains a wide range of cryptographic algorithms
specified in the Cryptol language. Our long-term goal is for these
specifications to be literate files that share as much common code as
possible, and to allow implementation correctness proofs to depend on
one shared, canonical description of the algorithms they target. As a
starting point, however, we plan to collect as many specifications as
we can find, as-is, and incrementally improve their presentation and
inter-dependency.

Some of the widely adopted cryptographic algorithms contained in this
repository are listed below.

|                            | Primitive                                                                              | Synthesis | Verification |
|----------------------------|----------------------------------------------------------------------------------------|-----------|--------------|
| **Block Cipher**           | [AES](Primitive/Symmetric/Cipher/Block/AES.cry)                                        |           |              |
|                            | [Triple DES](Primitive/Symmetric/Cipher/Block/TripleDES.cry)                           |           |              |
| **Stream Cipher**          | [ChaCha20-Poly1305](Primitive/Symmetric/Cipher/Authenticated/ChaChaPolyCryptolIETF.md) |           |              |
| **Message Authentication** | [HMAC](Primitive/Symmetric/MAC/HMAC.cry)                                               |           |              |
| **Digital Signature**      | [ECDSA](Primitive/Asymmetric/Signature/ecdsa.cry)                                      |           |              |
|                            | [SPHINCS+ 1.0](Primitive/Asymmetric/Signature/SphincsPlus/1.0/SphincsPlus.md)          |           |              |
|                            | [SPHINCS+ 3.1](Primitive/Asymmetric/Signature/SphincsPlus/3.1/sphincs.tex)             |           |              |
|                            | [FALCON 1.2](Primitive/Asymmetric/Signature/FALCON/1.2/falcon.tex)                     |           |              |
|                            | [CRYSTALS Dilithium Round 1](Primitive/Asymmetric/Signature/Dilithium/Round1/)         |           |              |
|                            | [CRYSTALS Dilithium Round 2](Primitive/Asymmetric/Signature/Dilithium/Round2/)         |           |              |
| **Hash**                   | [SHA1](Primitive/Keyless/Hash/SHA1.cry)                                                |           |              |
|                            | [SHA256](Primitive/Keyless/Hash/SHA256.cry)                                            |           |              |
|                            | [SHA2, SHA3](Primitive/Keyless/Hash/SHA.cry)                                           |           |              |
| **Asymmetric Encryption**  | [CRYSTALS Kyber 3.01](Primitive/Asymmetric/Cipher/Kyber/3.01/kyber.tex)                |           |              |
|                            | [RSA](Primitive/Asymmetric/Cipher/RSA.cry)                                             |           |              |

## NIST Post-Quantum Cryptography Standardization Selections
Here you can find a list of the post-quantum cryptographic schemes that were selected during the final round of NIST's post-quantum cryptography standardization process.

The repository contains Cryptol implementations of the selected cryptographic schemes that are resistant to attacks from quantum computers.

| Type          | PKE/KEM                                                            | Signature                                                              |
|---------------|--------------------------------------------------------------------|------------------------------------------------------------------------|
| Lattice-based | [CRYSTALS Kyber](Primitive/Asymmetric/Cipher/Kyber/3.01/kyber.tex) | [CRYSTALS Dilithium](Primitive/Asymmetric/Signature/Dilithium/Round2/) |
|               |                                                                    | [FALCON](Primitive/Asymmetric/Signature/FALCON/1.2/falcon.tex)         |
| Hash-based    |                                                                    | [SPHINCS+](Primitive/Asymmetric/Signature/SphincsPlus/3.1/sphincs.tex) |

### Remarks
The Cryptol specs presented here are written with the objective of being as close as possible to the specs as presented in the official papers so that even someone without cryptographic experience can verify that the Cryptol code meets the spec by reading it "line by line". As a result, the Cryptol code may not be as efficient as other implementations (for example it may implement DFT instead of FFT), yet it is closer to the paper definitions and aims to be functionally equivalent to them.

#### Properties
The Cryptol specs define several correctness properties. Cryptol is capable of proving several of these properties hence guaranteeing the cryptographic correctness of the code. However, Cryptol cannot verify properties that hold only with overwhelming probability, i.e. properties that hold for almost all but not all possible inputs. As a result, cryptographic schemes with approximate correctness can only be checked by Cryptol on uniformly random inputs.
#### Caveats
- Correctness of FALCON is currently failing although correctness of its intermediate WOTS passes.
- 
### Appreciations

## Contributing
You can contribute to this project by submitting issues or bug reports.