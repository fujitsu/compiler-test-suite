#include <stdio.h>

void mpa2_icm(int * restrict a, int *restrict x, int n)
{
  int i;
  int j1,j2,j3,j4,j5,j6,j7,j8,j9,j10,j11,j12,j13,j14,j15;
  j1=0;
  j2=0;
  j3=0;
  j4=0;
  j5=0;
  j6=0;
  j7=0;
  j8=0;
  j9=0;
  j10=0;
  j11=0;
  j12=0;
  j13=0;
  j14=0;
  j15=0;
  for (i=0; i<n; ++i) {
    a[i] += x[j1+16] + x[j2+32] + x[j3+48] + x[j4+64] + x[j5+80];
    a[i] += x[j6+96] + x[j7+112] + x[j8+128] + x[j9+144]  + x[j10+160];
    a[i] += x[j11+176] + x[j12+192] + x[j13+208] + x[j14+224]  + x[j15+240];
    j1+=1;
    j2+=1;
    j3+=1;
    j4+=1;
    j5+=1;
    j6+=1;
    j7+=1;
    j8+=1;
    j9+=1;
    j10+=1;
    j11+=1;
    j12+=1;
    j13+=1;
    j14+=1;
    j15+=1;
  }
}

#define N 1000
#define ANS 1150

int main(void) {
  int i,k;
  int a[N], x[N];


  for (i=0; i<N; ++i) {
    a[i] = x[i] = 1;
  }

  mpa2_icm(a,x,10);

  k = 0;
  for (i=0; i<N; ++i) {
    k += a[i];
  }
  if (k == ANS) {
    printf("ok\n");
  } else {
    printf("ng : %d != %d\n", k, ANS);
  }
  return 0;
}
