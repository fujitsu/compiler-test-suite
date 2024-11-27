#include <string.h>
#include <stdio.h>
void Qp_itoq(long double * z,int x) {
  *z = x;
}
void Qp_uitoq(long double * z,unsigned int x) {
  *z = x;
}
void Qp_stoq(long double * z,float * x) {
  *z = *x;
}
void Qp_dtoq(long double * z,double * x) {
  *z = *x;
}
void Qp_xtoq(long double * z,long long x) {
  *z = x;
}
void Qp_uxtoq(long double * z,unsigned long long x) {
  *z = x;
}

int Qp_qtoi(long double * x) {
  return *x;
}
unsigned int Qp_qtoui(long double * x) {
  return *x;
}
float Qp_qtos(long double * x) {
  return *x;
}
double Qp_qtod(long double * x) {
  return *x;
}
long long Qp_qtox(long double * x) {
  return *x;
}
unsigned long long Qp_qtoux(long double * x) {
  return *x;
}
int main()
{
  int i;
  unsigned int u;
  long long l;
  unsigned long long ull;
  long double z,x;
  double d=100;
  float  f=100;
#if defined(i386)
  if( sizeof(long double) != 12 ) puts("NG 0");
  memset(&x,0,sizeof(long double));
  memset(&z,0,sizeof(long double));
#elif defined(__x86_64__) || defined(__aarch64__)
  if( sizeof(long double) != 16 ) printf("NG 0\n");
  memset(&x,0,sizeof(long double));
  memset(&z,0,sizeof(long double));
#endif
  x = 100;
  Qp_itoq(&z,100);
  if( memcmp(&x,&z,sizeof(long double)) != 0 ) puts("NG 1");
  Qp_uitoq(&z,100);
  if( memcmp(&x,&z,sizeof(long double)) != 0 ) puts("NG 2");
  Qp_stoq(&z,&f);
  if( memcmp(&x,&z,sizeof(long double)) != 0 ) puts("NG 3");
  Qp_dtoq(&z,&d);
  if( memcmp(&x,&z,sizeof(long double)) != 0 ) puts("NG 4");
  Qp_xtoq(&z,100);
  if( memcmp(&x,&z,sizeof(long double)) != 0 ) puts("NG 5");
  Qp_uxtoq(&z,100);
  if( memcmp(&x,&z,sizeof(long double)) != 0 ) puts("NG 6");

  i = Qp_qtoi(&x);
  if( i != 100 ) puts("NG 7");
  u = Qp_qtoui(&x);
  if( u != 100 ) puts("NG 8");
  f = Qp_qtos(&x);
  if( f != 100 ) puts("NG 9");
  d = Qp_qtod(&x);
  if( d != 100 ) puts("NG 10");
  l = Qp_qtox(&x);
  if( l != 100 ) puts("NG 11");
  ull = Qp_qtoux(&x);
  if( ull != 100 ) puts("NG 12");
  puts("PASS");
}
