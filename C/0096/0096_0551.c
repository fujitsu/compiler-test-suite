#include <stdio.h>
#define loop_count 10

void sub(long *xxx, long *yyy) {
  int i;
  for (i=0; i<loop_count;i++) {
    if (xxx[i] != yyy[i]) {
      yyy[i] = xxx[i];
    }
  }
}
int main() {
  long xxx[loop_count];
  long yyy[loop_count];
  int i;

  for (i=0;i<loop_count;i++) {
    xxx[i] = i+1;
    yyy[i] = i*2-10;
  }
  sub(xxx,yyy);
  if (yyy[5] == 6) {
    printf("OK\n");
  } else {
    printf("NG %d\n",yyy[5]);
  }
}
