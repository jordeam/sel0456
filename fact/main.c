#include <stdio.h>
#include "fact.h"

int main() {
  int n = 10, i, acc = 1;
  for (i = 2; i <= n; i++) {
    acc *= i; // acc * i
  }

  printf("n!=%d ou %d\n", acc, fact(10));

  return 0;
}
