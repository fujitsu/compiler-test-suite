#include <stdio.h>

void hc2cf_2(double *Rp, int ms) {
  int i;

  for (i = 2; i < 8; i = i + 1, Rp = Rp + ms) {
    Rp[0] = 1;
  }
}

void init (float *fp) {
  int i;
  for(i=0;i<20;++i) {
    fp[i] = i*1.0;
  }
}
void sub2(int ms) {
  int i;
  float fp[20];
  init(fp);
  hc2cf_2((double*)fp,ms);
  for(i=0;i<20;++i) {
    printf("%d %.5f\n", i, fp[i]);
  }
}


int main(void) {
  sub2(2);
  return 0;
}
