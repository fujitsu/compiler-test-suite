#include <stdio.h>
int Qp_feq(long double * x,long double * y) {
  return  *x == *y;
}
int Qp_fne(long double * x,long double * y) {
  return  *x != *y;
}
int Qp_flt(long double * x,long double * y) {
  return  *x < *y;
}
int Qp_fle(long double * x,long double * y) {
  return  *x <= *y;
}
int Qp_fge(long double * x,long double * y) {
  return  *x >= *y;
}
int Qp_fgt(long double * x,long double * y) {
  return  *x > *y;
}
int Qp_cmp(long double * x,long double * y) {
  return  *x == *y;
}
int Qp_cmpe(long double * x,long double * y) {
  return  *x == *y;
}
int main()
{
   long double x=-1,y=1;
   if( !Qp_feq(&x,&x) ) puts("NG1");
   if(  Qp_feq(&x,&y) ) puts("NG2");
   if(  Qp_fne(&x,&x) ) puts("NG3");
   if( !Qp_fne(&x,&y) ) puts("NG4");
   if( !Qp_fle(&x,&y) ) puts("NG5");
   if( !Qp_flt(&x,&y) ) puts("NG6");
   if( !Qp_fge(&y,&x) ) puts("NG7");
   if( !Qp_fgt(&y,&x) ) puts("NG8");
   puts("PASS");
}
