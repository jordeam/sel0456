#include <stdio.h>
#include <stdlib.h>

char *s = "1234";
const char *s1 = "456";
char const *s2 = "789";
char s3[10] = "000";

extern int j;

int j;

int main(void) {
  int i;
  i = 3;
  j = i;
  return ++i;
}
