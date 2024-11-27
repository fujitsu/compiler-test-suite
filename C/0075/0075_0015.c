#include <stdio.h>
#include <math.h>

static int sub(int);
int main(){
  int a;
  a = sub( 1 - sqrt(9) );
  printf("value = %d\n", a);
}

int sub(int x) {
  int positive;

  if (x == 0)
    return 0;

  if (x > 0)
    positive = 1;
  else {
    positive = 0;
    x = -x;
  }

  do {
  } while (x < 1);

  if (positive)
    return x;
  else
    return -x;
}
