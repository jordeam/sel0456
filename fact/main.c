#include <stdio.h>

unsigned int fact(unsigned int n) {
  if (n == 0 || n == 1)
    return 1;
  return n * fact(n - 1);
}

int main() {
  int n = 10, i, acc = 1;
  for (i = 2; i <= n; i++) {
    acc *= i; // acc * i
  }

  printf("n!=%d ou %d\n", acc, fact(10));

  return 0;
}
