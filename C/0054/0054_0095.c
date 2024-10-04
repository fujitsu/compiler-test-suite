#include <stdio.h>

int main()
{
  unsigned long long int ll;

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

  printf("01 START\n");

  ll = (unsigned long long int)(long long int)9223372036854775807;
  if (ll == (unsigned long long int)9223372036854775807)
    printf("--- 01 (01-01) OK ---\n");
  else {
    printf("*** 01 (01-01) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(long long int)-9223372036854775808;
  if (ll == (unsigned long long int)9223372036854775808)
    printf("--- 01 (01-02) OK ---\n");
  else {
    printf("*** 01 (01-02) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(signed char)127;
  if (ll == 127)
    printf("--- 01 (01-03) OK ---\n");
  else {
    printf("*** 01 (01-03) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(signed char)-1;
  if (ll == (unsigned long long int) 18446744073709551615)
    printf("--- 01 (01-04) OK ---\n");
  else {
    printf("*** 01 (01-04) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(short int)32767;
  if (ll == 32767)
    printf("--- 01 (01-05) OK ---\n");
  else {
    printf("*** 01 (01-05) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(short int)-32768;
  if (ll == 0xffffffffffff8000)
    printf("--- 01 (01-06) OK ---\n");
  else {
    printf("*** 01 (01-06) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(int)2147483647;
  if (ll == 2147483647)
    printf("--- 01 (01-07) OK ---\n");
  else {
    printf("*** 01 (01-07) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(long int)-2147483648;
  if (ll == 0xffffffff80000000)
    printf("--- 01 (01-08) OK ---\n");
  else {
    printf("*** 01 (01-08) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(unsigned char)255;
  if (ll == 255)
    printf("--- 01 (01-09) OK ---\n");
  else {
    printf("*** 01 (01-09) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(unsigned char)0;
  if (ll == 0)
    printf("--- 01 (01-10) OK ---\n");
  else {
    printf("*** 01 (01-10) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(unsigned short int)65535;
  if (ll == 65535)
    printf("--- 01 (01-11) OK ---\n");
  else {
    printf("*** 01 (01-11) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(unsigned short int)0;
  if (ll == 0)
    printf("--- 01 (01-12) OK ---\n");
  else {
    printf("*** 01 (01-12) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(unsigned int)4294967295;
  if (ll == 4294967295)
    printf("--- 01 (01-13) OK ---\n");
  else {
    printf("*** 01 (01-13) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(unsigned long int)0;
  if (ll == 0)
    printf("--- 01 (01-14) OK ---\n");
  else {
    printf("*** 01 (01-14) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(float)123.123;
  if (ll == 123)
    printf("--- 01 (01-15) OK ---\n");
  else {
    printf("*** 01 (01-15) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(float)-0.9f;
  if (ll == 0)
    printf("--- 01 (01-16) OK ---\n");
  else {
    printf("*** 01 (01-16) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(double)123456789.1;
  if (ll == 123456789)
    printf("--- 01 (01-17) OK ---\n");
  else {
    printf("*** 01 (01-17) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(long double)1234567890123.1l;
  if (ll == (unsigned long long int)1234567890123)
    printf("--- 01 (01-19) OK ---\n");
  else {
    printf("*** 01 (01-19) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)(long double)-0.9l;
  if (ll == 0)
    printf("--- 01 (01-20) OK ---\n");
  else {
    printf("*** 01 (01-20) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  printf("01 END  \n");
}
