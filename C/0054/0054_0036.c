#include<stdio.h>
 

int main()
{
  int                int_;
  long  int          lon_;

  printf("01 START\n");

  int_ = -(char)0x7f;
#if INT64
  if (int_ == 0xffffffffffffff81)
#else
  if (int_ == 0xffffff81)
#endif
    printf("--- 01 (33-01) OK ---\n");
  else {
    printf("*** 01 (33-01) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = -(char)0;
  if (int_ == 0)
    printf("--- 01 (33-02) OK ---\n");
  else {
    printf("*** 01 (33-02) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = -(char)0x81;
  if (int_ == 0x7f)
    printf("--- 01 (33-03) OK ---\n");
  else {
    printf("*** 01 (33-03) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = ~(char)0x7f;
#if INT64
  if (int_ == 0xffffffffffffff80)
#else
  if (int_ == 0xffffff80)
#endif
    printf("--- 01 (33-04) OK ---\n");
  else {
    printf("*** 01 (33-04) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = ~(char)0;
#if INT64
  if (int_ == 0xffffffffffffffff)
#else
  if (int_ == 0xffffffff)
#endif
    printf("--- 01 (33-05) OK ---\n");
  else {
    printf("*** 01 (33-05) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = ~(char)0x81;
  if (int_ == 0x7e)
    printf("--- 01 (33-06) OK ---\n");
  else {
    printf("*** 01 (33-06) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = !(char)0x7f;
  if (int_ == 0)
    printf("--- 01 (33-07) OK ---\n");
  else {
    printf("*** 01 (33-07) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = !(char)0;
  if (int_ == 1)
    printf("--- 01 (33-08) OK ---\n");
  else {
    printf("*** 01 (33-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = !(char)0x81;
  if (int_ == 0)
    printf("--- 01 (33-09) OK ---\n");
  else {
    printf("*** 01 (33-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = -(int)2147483647;
#if INT64
  if (int_ == 0xffffffff80000001)
#else
  if (int_ == 0x80000001)
#endif
    printf("--- 01 (33-10) OK ---\n");
  else {
    printf("*** 01 (33-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = -(int)0;
  if (int_ == 0)
    printf("--- 01 (33-11) OK ---\n");
  else {
    printf("*** 01 (33-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = -(int)0x80000001;
#if INT64
  if (int_ == 0xffffffff7fffffff)
#else
  if (int_ == 0x7fffffff)
#endif
    printf("--- 01 (33-12) OK ---\n");
  else {
    printf("*** 01 (33-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = ~(int)0x7fffffff;
#if INT64
  if (int_ == 0xffffffff80000000)
#else
  if (int_ == 0x80000000)
#endif
    printf("--- 01 (33-13) OK ---\n");
  else {
    printf("*** 01 (33-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = ~(int)0;
#if INT64
  if (int_ == 0xffffffffffffffff)
#else
  if (int_ == 0xffffffff)
#endif
    printf("--- 01 (33-14) OK ---\n");
  else {
    printf("*** 01 (33-14) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = ~(int)0x80000001;
#if INT64
  if (int_ == 0xffffffff7ffffffe)
#else
  if (int_ == 0x7ffffffe)
#endif
    printf("--- 01 (33-15) OK ---\n");
  else {
    printf("*** 01 (33-15) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = !(int)2147483647;
  if (int_ == 0)
    printf("--- 01 (33-16) OK ---\n");
  else {
    printf("*** 01 (33-16) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = !(int)0;
  if (int_ == 1)
    printf("--- 01 (33-17) OK ---\n");
  else {
    printf("*** 01 (33-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = !(int)0x80000001;
  if (int_ == 0)
    printf("--- 01 (33-18) OK ---\n");
  else {
    printf("*** 01 (33-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = -(short int)0x7fff;
#if INT64
  if (int_ == 0xffffffffffff8001)
#else
  if (int_ == 0xffff8001)
#endif
    printf("--- 01 (34-01) OK ---\n");
  else {
    printf("*** 01 (34-01) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = -(short int)0;
  if (int_ == 0)
    printf("--- 01 (34-02) OK ---\n");
  else {
    printf("*** 01 (34-02) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = -(short int)0x8001;
  if (int_ == 0x7fff)
    printf("--- 01 (34-03) OK ---\n");
  else {
    printf("*** 01 (34-03) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = ~(short int)0x7fff;
#if INT64
  if (int_ == 0xffffffffffff8000)
#else
  if (int_ == 0xffff8000)
#endif
    printf("--- 01 (34-04) OK ---\n");
  else {
    printf("*** 01 (34-04) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = ~(short int)0;
#if INT64
  if (int_ == 0xffffffffffffffff)
#else
  if (int_ == 0xffffffff)
#endif
    printf("--- 01 (34-05) OK ---\n");
  else {
    printf("*** 01 (34-05) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = ~(short int)0x8001;
  if (int_ == 0x7ffe)
    printf("--- 01 (34-06) OK ---\n");
  else {
    printf("*** 01 (34-06) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = !(short int)0x7fff;
  if (int_ == 0)
    printf("--- 01 (34-07) OK ---\n");
  else {
    printf("*** 01 (34-07) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = !(short int)0;
  if (int_ == 1)
    printf("--- 01 (34-08) OK ---\n");
  else {
    printf("*** 01 (34-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = !(short int)0x8001;
  if (int_ == 0)
    printf("--- 01 (34-09) OK ---\n");
  else {
    printf("*** 01 (34-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  lon_ = -(long int)2147483647;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (lon_ == 0xffffffff80000001)
#else
  if (lon_ == 0x80000001)
#endif
    printf("--- 01 (34-10) OK ---\n");
  else {
    printf("*** 01 (34-10) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }

  lon_ = -(long int)0;
  if (lon_ == 0)
    printf("--- 01 (34-11) OK ---\n");
  else {
    printf("*** 01 (34-11) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }

  lon_ = -(long int)0x80000001;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (lon_ == 0xffffffff7fffffff)
#else
  if (lon_ == 0x7fffffff)
#endif
    printf("--- 01 (34-12) OK ---\n");
  else {
    printf("*** 01 (34-12) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }

  lon_ = ~(long int)0x7fffffff;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (lon_ == 0xffffffff80000000)
#else
  if (lon_ == 0x80000000)
#endif
    printf("--- 01 (34-13) OK ---\n");
  else {
    printf("*** 01 (34-13) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }

  lon_ = ~(long int)0;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (lon_ == 0xffffffffffffffff)
#else
  if (lon_ == 0xffffffff)
#endif
    printf("--- 01 (34-14) OK ---\n");
  else {
    printf("*** 01 (34-14) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }

  lon_ = ~(long int)0x80000001;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (lon_ == 0xffffffff7ffffffe)
#else
  if (lon_ == 0x7ffffffe)
#endif
    printf("--- 01 (34-15) OK ---\n");
  else {
    printf("*** 01 (34-15) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }

  lon_ = !(long int)2147483647;
  if (lon_ == 0)
    printf("--- 01 (34-16) OK ---\n");
  else {
    printf("*** 01 (34-16) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }

  lon_ = !(long int)0;
  if (lon_ == 1)
    printf("--- 01 (34-17) OK ---\n");
  else {
    printf("*** 01 (34-17) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }

  lon_ = !(long int)0x80000001;
  if (lon_ == 0)
    printf("--- 01 (34-18) OK ---\n");
  else {
    printf("*** 01 (34-18) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }

  printf("01 END  \n");
}
