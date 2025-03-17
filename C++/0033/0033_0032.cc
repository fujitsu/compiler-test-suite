#include  <stdio.h>
 struct tag1 {
   union tag2 {
     int a;
     struct tag3 {
       unsigned long int b1:8;
       unsigned long int b2:16;
       unsigned long int b3:4;
       unsigned long int b4:2;
       unsigned long int b5:2;
     } s2;
   } u1;
 } s1;
int main() {
  int work = 0, work2 = 0;
  int    fun1();
#pragma omp parallel
  s1.u1.a=0x11FFFC18;
#pragma omp parallel
  fun1();

#if (defined(BYTE_ORDER) && (BYTE_ORDER == LITTLE_ENDIAN)) \
 || defined(__aarch64__) || defined(__x86_64__)
#pragma omp parallel
  if(s1.u1.a==0x31000000)
#else
#pragma omp parallel
  if(s1.u1.a==28)
#endif
#pragma omp parallel
    {
#pragma omp parallel
#pragma omp atomic
      work++;
    }
  else
#pragma omp parallel
    {
#pragma omp parallel
#pragma omp atomic
      work2++;
    }

  if ( !work2 )
    printf("ok\n");
  else
    printf("ng:s1.u1.a=%x:work=%d:work2=%d\n",s1.u1.a,work,work2);
}

int fun1() {
#pragma omp parallel
    s1.u1.s2.b1 = s1.u1.s2.b1 ^ s1.u1.s2.b1;
#pragma omp parallel
    s1.u1.s2.b2 = s1.u1.s2.b2 << 14;
#pragma omp parallel
    s1.u1.s2.b3 = s1.u1.s2.b3 | 0xf;
#pragma omp parallel
    s1.u1.s2.b3 = s1.u1.s2.b3 & 1;
#pragma omp parallel
    s1.u1.s2.b4 = s1.u1.s2.b4 | 3;
#pragma omp parallel
    s1.u1.s2.b5 = s1.u1.s2.b5 >> 1;

  return (s1.u1.a);
}
