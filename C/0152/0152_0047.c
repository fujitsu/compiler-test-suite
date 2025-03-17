#include <stdio.h>

long int flag;

static void flag_on() {
  flag = 1;
}

static void flag_off() {
  flag = 0;
}

int main() {
  long int array[100];
  long int i, tmp;

  flag_off();

  for (i=0; i<100; i++) {
    array[i] = i;
  }

  flag_on();

  for (i=0; i<100; i++) {
    tmp = array[i];
    if (i < 25 || flag == 1) {
      tmp = 0;
    }
  }

  if (tmp == 0) {
    printf("OK\n");
  } else {
    printf("NG %d\n",tmp);
  }
  return 1;
}
