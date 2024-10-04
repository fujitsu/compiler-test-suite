#include<stdio.h>
 

int main()
{
  unsigned int       uns_int;
  unsigned long int  uns_lon;

  printf("02 START\n");

  uns_int = -(unsigned char)0;
  if (uns_int == 0)
    printf("--- 02 (35-01) OK ---\n");
  else {
    printf("*** 02 (35-01) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = -(unsigned char)255;
#if INT64
  if (uns_int == 0xffffffffffffff01)
#else
  if (uns_int == 0xffffff01)
#endif
    printf("--- 02 (35-02) OK ---\n");
  else {
    printf("*** 02 (35-02) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = ~(unsigned char)0;
#if INT64
  if (uns_int == 0xffffffffffffffff)
#else
  if (uns_int == 0xffffffff)
#endif
    printf("--- 02 (35-03) OK ---\n");
  else {
    printf("*** 02 (35-03) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = ~(unsigned char)255;
#if INT64
  if (uns_int == 0xffffffffffffff00)
#else
  if (uns_int == 0xffffff00)
#endif
    printf("--- 02 (35-04) OK ---\n");
  else {
    printf("*** 02 (35-04) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = !(unsigned char)0;
  if (uns_int == 1)
    printf("--- 02 (35-05) OK ---\n");
  else {
    printf("*** 02 (35-05) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = !(unsigned char)255;
  if (uns_int == 0)
    printf("--- 02 (35-06) OK ---\n");
  else {
    printf("*** 02 (35-06) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = -(unsigned int)0;
  if (uns_int == 0)
    printf("--- 02 (35-07) OK ---\n");
  else {
    printf("*** 02 (35-07) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = -(unsigned int)4294967295;
#if INT64
  if (uns_int == 0xffffffff00000001)
#else
  if (uns_int == 1)
#endif
    printf("--- 02 (35-08) OK ---\n");
  else {
    printf("*** 02 (35-08) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = ~(unsigned int)0;
#if INT64
  if (uns_int == 0xffffffffffffffff)
#else
  if (uns_int == 0xffffffff)
#endif
    printf("--- 02 (35-09) OK ---\n");
  else {
    printf("*** 02 (35-09) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = ~(unsigned int)4294967295;
#if INT64
  if (uns_int == 0xffffffff00000000)
#else
  if (uns_int == 0)
#endif
    printf("--- 02 (35-10) OK ---\n");
  else {
    printf("*** 02 (35-10) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = !(unsigned int)0;
  if (uns_int == 1)
    printf("--- 02 (35-11) OK ---\n");
  else {
    printf("*** 02 (35-11) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = !(unsigned int)4294967295;
  if (uns_int == 0)
    printf("--- 02 (35-12) OK ---\n");
  else {
    printf("*** 02 (35-12) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = -(unsigned short int)0;
  if (uns_int == 0)
    printf("--- 02 (36-01) OK ---\n");
  else {
    printf("*** 02 (36-01) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = -(unsigned short int)65535;
#if INT64
  if (uns_int == 0xffffffffffff0001)
#else
  if (uns_int == 0xffff0001)
#endif
    printf("--- 02 (36-02) OK ---\n");
  else {
    printf("*** 02 (36-02) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = ~(unsigned short int)0;
#if INT64
  if (uns_int == 0xffffffffffffffff)
#else
  if (uns_int == 0xffffffff)
#endif
    printf("--- 02 (36-03) OK ---\n");
  else {
    printf("*** 02 (36-03) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = ~(unsigned short int)65535;
#if INT64
  if (uns_int == 0xffffffffffff0000)
#else
  if (uns_int == 0xffff0000)
#endif
    printf("--- 02 (36-04) OK ---\n");
  else {
    printf("*** 02 (36-04) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = !(unsigned short int)0;
  if (uns_int == 1)
    printf("--- 02 (36-05) OK ---\n");
  else {
    printf("*** 02 (36-05) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = !(unsigned short int)65535;
  if (uns_int == 0)
    printf("--- 02 (36-06) OK ---\n");
  else {
    printf("*** 02 (36-06) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_lon = -(unsigned long int)0;
  if (uns_lon == 0)
    printf("--- 02 (36-07) OK ---\n");
  else {
    printf("*** 02 (36-07) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = -(unsigned long int)4294967295;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (uns_lon == 0xffffffff00000001)
#else
  if (uns_lon == 1)
#endif
    printf("--- 02 (36-08) OK ---\n");
  else {
    printf("*** 02 (36-08) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = ~(unsigned long int)0;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (uns_lon == 0xffffffffffffffff)
#else
  if (uns_lon == 0xffffffff)
#endif
    printf("--- 02 (36-09) OK ---\n");
  else {
    printf("*** 02 (36-09) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = ~(unsigned long int)4294967295;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (uns_lon == 0xffffffff00000000)
#else
  if (uns_lon == 0)
#endif
    printf("--- 02 (36-10) OK ---\n");
  else {
    printf("*** 02 (36-10) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = !(unsigned long int)0;
  if (uns_lon == 1)
    printf("--- 02 (36-11) OK ---\n");
  else {
    printf("*** 02 (36-11) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = !(unsigned long int)4294967295;
  if (uns_lon == 0)
    printf("--- 02 (36-12) OK ---\n");
  else {
    printf("*** 02 (36-12) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  printf("02 END  \n");
}
