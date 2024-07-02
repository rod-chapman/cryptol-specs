:l Tests/TestAES_GCM.cry

:prove aes128_vector_0
:prove aes128_vector_1
:prove aes128_vector_2
:prove aes128_vector_3

:prove aes256_vector_0
:prove aes256_invalid_vector_1

// The following checks do not really provide any significant formal
// verification because they check so little of the sample space.
// They each take a long time to `:prove` and would likely require
// manual modification to prove in a reasonable amount of time.


:l Instantiations/AES128_GCM.cry

// Make sure that decryption is the inverse of encryption
// This property takes more than 20 minutes to `:prove`.
// It's also spot-checked in the test vectors
// Here, we just pick a fixed set of parameters, but it should be true
// for all valid tag, aad, and plaintext lengths.
// - P = 256 because we want to test the block chaining, so we need at least 2
// - IV = 96 because it's the shortest allowable value
// - AAD = 5 because we want to make sure it's incorporated
:check gcmIsSymmetric `{AAD=5, P=256, IV=96}

// This takes more than 25 minutes to `:prove`.
:check dotAndMultAreEquivalent

// Repeat the above checks for AES256
:l Instantiations/AES256_GCM.cry
:check gcmIsSymmetric `{AAD=5, P=256, IV=96}
:check dotAndMultAreEquivalent