#include <stdio.h>

int main() {
  int n = 10, i, acc = 1;
  for (i = 2; i <= n; i++) {
    acc *= i; // acc * i
  }

  printf("n!=%d\n", acc);

  return 0;
}
