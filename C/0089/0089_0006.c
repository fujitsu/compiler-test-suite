#include <stdio.h>
#include <string.h>

int main() {

  char s1[21] = { 0,0,0,0,0,
                  0,0,0,0,0,
                  0,0,0,0,0,
                  0,0,0,0,0,0 };
  int i;

  memset(s1, '*', 20);
  for (i = 0; i < 21; ++i) {
    printf("%x\n",  s1[i]);
  }

  return 0;
}
