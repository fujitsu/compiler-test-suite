#include <stdio.h>
#include "001.h"
#include "002.h"
#include "000.h"

int main(void) {
  int a[3][3];
  int det = 0;

  input(a);
  output(a);
  calc(a, &det);
  if (det == 74)
    printf("OK\n");
  else
    printf("NG %d\n", det);
  output(a);
}
