#include <stdio.h>

struct data {
  long int data_l1;
  long int data_l2;
};

void sub(struct data *xxx, long int n, long int vvv) {
  long int i;
  for (i=0; i<n; i++) {
    const struct data aaa[1] = {*xxx};
    const struct data *tmp = &aaa[i];
    tmp = tmp + vvv;
    printf("%d\n",tmp->data_l2);
  }
}

int main() {
  struct data xxx;
  xxx.data_l1 = 10;
  xxx.data_l2 = 20;
  sub(&xxx, 1, 0);
  return 0;
}
