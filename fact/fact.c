#include "fact.h"

unsigned int fact(unsigned int n) {
  if (n == 0 || n == 1)
    return 1;
  return n * fact(n - 1);
}
