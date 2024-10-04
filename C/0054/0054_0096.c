#include <stdio.h>

int main()
{
  long long int ll;

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

  printf("02 START\n");

  sc = (signed char)(unsigned long long int)0xffffffffffffffff;
  if (sc == -1)
    printf("--- 02 (02-01) OK ---\n");
  else {
    printf("*** 02 (02-01) NG ***\n");
    printf("SC = %x\n" , sc);
  }

  sc = (signed char)(unsigned long long int)0xfedcba9876543210;
  if (sc == 16)
    printf("--- 02 (02-02) OK ---\n");
  else {
    printf("*** 02 (02-02) NG ***\n");
    printf("SC = %x\n" , sc);
  }

  ss = (short int)(unsigned long long int)0x4fff5fff6fff7fff;
  if (ss == 32767)
    printf("--- 02 (02-03) OK ---\n");
  else {
    printf("*** 02 (02-03) NG ***\n");
    printf("SS = %x\n" , ss);
  }

  ss = (short int)(unsigned long long int)0xccccddddeeeeffff;
  if (ss == -1)
    printf("--- 02 (02-04) OK ---\n");
  else {
    printf("*** 02 (02-04) NG ***\n");
    printf("SS = %x\n" , ss);
  }

  si = (int)(unsigned long long int)0x123456787fffffff;
  if (si == 2147483647)
    printf("--- 02 (02-05) OK ---\n");
  else {
    printf("*** 02 (02-05) NG ***\n");
    printf("SI = %x\n" , si);
  }

  sl = (long int)(unsigned long long int)0xffffeeeeffffffff;
#if  __x86_64__ || __aarch64__
  if (sl == 0xffffeeeeffffffff)
#else
  if (sl == -1)
#endif
    printf("--- 02 (02-06) OK ---\n");
  else {
    printf("*** 02 (02-06) NG ***\n");
    printf("SL = %x\n" , sl);
  }

  uc = (unsigned char)(unsigned long long int)0x12345678123456ff;
  if (uc == 255)
    printf("--- 02 (02-07) OK ---\n");
  else {
    printf("*** 02 (02-07) NG ***\n");
    printf("UC = %x\n" , uc);
  }

  uc = (unsigned char)(unsigned long long int)0x8000000000000000;
  if (uc == 0)
    printf("--- 02 (02-08) OK ---\n");
  else {
    printf("*** 02 (02-08) NG ***\n");
    printf("UC = %x\n" , uc);
  }

  us = (unsigned short int)(unsigned long long int)0x7fff7fffffffffff;
  if (us == 65535)
    printf("--- 02 (02-09) OK ---\n");
  else {
    printf("*** 02 (02-09) NG ***\n");
    printf("US = %x\n" , us);
  }

  us = (unsigned short int)(unsigned long long int)0x8000123400000001;
  if (us == 1)
    printf("--- 02 (02-10) OK ---\n");
  else {
    printf("*** 02 (02-10) NG ***\n");
    printf("US = %x\n" , us);
  }

  ui = (unsigned int)(unsigned long long int)0x7fff7fffffffffff;
  if (ui == 4294967295)
    printf("--- 02 (02-11) OK ---\n");
  else {
    printf("*** 02 (02-11) NG ***\n");
    printf("UI = %x\n" , ui);
  }

  ul = (unsigned long int)(unsigned long long int)0x8000800000000000;
#if  __x86_64__ || __aarch64__
  if (ul == 0x8000800000000000)
#else
  if (ul == 0)
#endif
    printf("--- 02 (02-12) OK ---\n");
  else {
    printf("*** 02 (02-12) NG ***\n");
    printf("UL = %x\n" , ul);
  }

  ll = (long long int)(unsigned long long int)0x7fffffffffffffff;
  if (ll == 9223372036854775807)
    printf("--- 02 (02-13) OK ---\n");
  else {
    printf("*** 02 (02-13) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)(unsigned long long int)0xffffffffffffffff;
  if (ll == -1)
    printf("--- 02 (02-14) OK ---\n");
  else {
    printf("*** 02 (02-14) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  fl = (float)(unsigned long long int)500000;
  if (fl == 5.0e+5f)
    printf("--- 02 (02-15) OK ---\n");
  else {
    printf("*** 02 (02-15) NG ***\n");
    printf("FL = %x\n" , fl);
  }

  fl = (float)(unsigned long long int)0x8000000000000000;
  if (fl > 0.922337e+19f && fl < 0.922338e+19f)
    printf("--- 02 (02-16) OK ---\n");
  else {
    printf("*** 02 (02-16) NG ***\n");
    printf("FL = %x\n" , fl);
  }

  db = (double)(unsigned long long int)1000000000000000000;
  if (db == 1.0e+18)
    printf("--- 02 (02-17) OK ---\n");
  else {
    printf("*** 02 (02-17) NG ***\n");
    printf("DB = %x\n" , db);
  }

  db = (double)(unsigned long long int)0xffffffffffffffff;
  if (db >= 0.184467440737e+20 && db <= 0.184467440738e+20)
    printf("--- 02 (02-18) OK ---\n");
  else {
    printf("*** 02 (02-18) NG ***\n");
    printf("DB = %x\n" , db);
  }

  ld = (long double)(unsigned long long int)2000000000000000000;
  if (ld == 2.0e+18l)
    printf("--- 02 (02-19) OK ---\n");
  else {
    printf("*** 02 (02-19) NG ***\n");
    printf("LD = %x\n" , ld);
  }

  ld = (long double)(unsigned long long int)0xffffffffffffffff;
  if (ld >= 0.1844674407370955e+20 && ld <= 0.1844674407370956e+20)
    printf("--- 02 (02-20) OK ---\n");
  else {
    printf("*** 02 (02-20) NG ***\n");
    printf("LD = %x\n" , ld);
  }

  printf("02 END  \n");
}
