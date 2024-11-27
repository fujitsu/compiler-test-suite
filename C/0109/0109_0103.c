#include <stdio.h>
#define N 10000

signed char          i1, a_i1[N];
signed short         i2, a_i2[N];
signed int           i4, a_i4[N];
signed long long int i8, a_i8[N];
unsigned char          u1, a_u1[N];
unsigned short         u2, a_u2[N];
unsigned int           u4, a_u4[N];
unsigned long long int u8, a_u8[N];
float       r4, a_r4[N];
double      r8, a_r8[N];

void sum_i1(void)
{
  long i;
#pragma omp simd reduction(+:i1)
  for(i=0;i<N;i++) {
    if (a_i1[i]) {
      i1 = i1 + a_i1[i];
    }
  }
}

signed char          ans_i1;
signed short         ans_i2;
signed int           ans_i4;
signed long long int ans_i8;
unsigned char          ans_u1;
unsigned short         ans_u2;
unsigned int           ans_u4;
unsigned long long int ans_u8;
float       r4;
double      r8;

int main(void)
{
  long i;
  for(i=0;i<N;i++) {
    a_i1[i] = i;
  }
  sum_i1();
  if (i1 != -8) {
    printf("NG i1 %d %d \n", (int )i1, ans_i1);
  }
  puts("PASS");
  return 0;
}
