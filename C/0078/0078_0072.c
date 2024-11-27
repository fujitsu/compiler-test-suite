#include <stdio.h>
void Qp_add(long double * z,long double * x,long double * y) {
  *z = *x + *y;
}
void Qp_sub(long double * z,long double * x,long double * y) {
  *z = *x - *y;
}
void Qp_mul(long double * z,long double * x,long double * y) {
  *z = *x * *y;
}
void Qp_div(long double * z,long double * x,long double * y) {
  *z = *x / *y;
}

void Qp_neg(long double * z,long double * x) {
  *z = -*x;
}
void Qp_sqrt(long double * z,long double * x) {
  *z = *x;
}
int main()
{
   long double x,y,z;
   x=100,y=50;
   Qp_add(&z,&x,&y);
   if( z != 150 ) puts("NG1");
   Qp_sub(&z,&x,&y);
   if( z !=  50 ) puts("NG2");
   Qp_mul(&z,&x,&y);
   if( z != 5000 ) puts("NG3");
   Qp_div(&z,&x,&y);
   if( z != 2 ) puts("NG4");
   Qp_neg(&z,&x);
   if( z != -100 ) puts("NG5");
   x=0.0;
   Qp_neg(&z,&x);
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
   if( z != -0.0 ) puts("NG6");
#else
   if( *(int *)&z == 0 ) puts("NG6");
#endif
   puts("PASS");
}
