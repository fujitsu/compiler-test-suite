#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  long long int      ll;
 
  signed char      sc;
  int              si;
  short int        ss;
  long  int        sl;
  unsigned char      uc;
  unsigned int       ui;
  unsigned short int us;
  unsigned long  int ul;
  float            fl;
  double           db;
  long double      ld;
 
  printf(" START\n");
 
 
  ll = (long long int)(long long int)9223372036854775807;
  if (ll == 9223372036854775807)
    printf("---  (01-01) OK ---\n");
  else {
    printf("***  (01-01) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(long long int)-9223372036854775808;
  if (ll == -9223372036854775808)
    printf("---  (01-02) OK ---\n");
  else {
    printf("***  (01-02) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(signed char)127;
  if (ll == 127)
    printf("---  (01-03) OK ---\n");
  else {
    printf("***  (01-03) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(signed char)-1;
  if (ll == -1)
    printf("---  (01-04) OK ---\n");
  else {
    printf("***  (01-04) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(short int)32767;
  if (ll == 32767)
    printf("---  (01-05) OK ---\n");
  else {
    printf("***  (01-05) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(short int)-32768;
  if (ll == -32768)
    printf("---  (01-06) OK ---\n");
  else {
    printf("***  (01-06) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(int)2147483647;
  if (ll == 2147483647)
    printf("---  (01-07) OK ---\n");
  else {
    printf("***  (01-07) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(long int)-2147483648;
  if (ll == (long int)-2147483648)
    printf("---  (01-08) OK ---\n");
  else {
    printf("***  (01-08) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(unsigned char)255;
  if (ll == 255)
    printf("---  (01-09) OK ---\n");
  else {
    printf("***  (01-09) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(unsigned char)0;
  if (ll == 0)
    printf("---  (01-10) OK ---\n");
  else {
    printf("***  (01-10) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(unsigned short int)65535;
  if (ll == 65535)
    printf("---  (01-11) OK ---\n");
  else {
    printf("***  (01-11) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(unsigned short int)0;
  if (ll == 0)
    printf("---  (01-12) OK ---\n");
  else {
    printf("***  (01-12) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(unsigned int)4294967295;
  if (ll == 4294967295)
    printf("---  (01-13) OK ---\n");
  else {
    printf("***  (01-13) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(unsigned long int)0;
  if (ll == 0)
    printf("---  (01-14) OK ---\n");
  else {
    printf("***  (01-14) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(float)1.1f;
  if (ll == 1)
    printf("---  (01-15) OK ---\n");
  else {
    printf("***  (01-15) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(float)-0.9f;
  if (ll == 0)
    printf("---  (01-16) OK ---\n");
  else {
    printf("***  (01-16) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(double)1.1;
  if (ll == 1)
    printf("---  (01-17) OK ---\n");
  else {
    printf("***  (01-17) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(double)-0.9;
  if (ll == 0)
    printf("---  (01-18) OK ---\n");
  else {
    printf("***  (01-18) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(long double)1.1l;
  if (ll == 1)
    printf("---  (01-19) OK ---\n");
  else {
    printf("***  (01-19) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  ll = (long long int)(long double)-0.9l;
  if (ll == 0)
    printf("---  (01-20) OK ---\n");
  else {
    printf("***  (01-20) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  printf(" END  \n");
exit (0);
}
