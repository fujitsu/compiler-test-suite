#include <stdio.h>

static int aasize_1() { return 1;}

int main(int argc, char *argv[]) {
  double  x[1000];

  for(int i = 0; i < 10; i++)  {
    x[i] = 1.0;
  }

  printf(" OK\n");
  return 0;
}
