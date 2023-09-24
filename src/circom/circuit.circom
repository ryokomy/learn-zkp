pragma circom 2.0.0;
// include "../../node_modules/circomlib/circuits/sha256/sha256.circom";

// Sha256 dummy function
function Sha256(n) {
  return n * n;
}

template IsHash() {
  signal input s; // before hash
  signal input h; // hashed
  signal output o; // boolean

  // Sha256 dummy
  o <== 1 + (Sha256(s) - h);
}

// If h is the hash of s, then o is 1
component main {public [h]} = IsHash();