#include <stdio.h>

struct data {
  long int data_l1;
  long int data_l2;
};

void sub(struct data *xxx, long int n) {
  long int i;
  for (i=0; i<n; i++) {
    const struct data aaa = *xxx;
    printf("%d\n",aaa.data_l1);
  }
}

int main() {
  struct data xxx;
  xxx.data_l1 = 10;
  xxx.data_l2 = 20;
  sub(&xxx, 1);
  return 0;
}
