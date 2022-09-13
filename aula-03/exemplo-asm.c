#include <stdio.h>
#include <stdlib.h>
#include <math.h>

char *s = "1234";
const char *s1 = "456";
char const *s2 = "789";
char s3[10] = "000";

int j;
int z = 4;

int f(void) {
  return 3;
}
int main(void) {
  int i;
  float g = 1.2;
  g = sqrt(g);

  i = f();
  j = i;
  return ++i;
}
