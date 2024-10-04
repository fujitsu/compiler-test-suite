#include<stdio.h>
 

int main()
{
  unsigned int       uns_int;
  int                int_   ;

  printf("08 START\n");

  int_ = (unsigned char)100 + (unsigned char)100;
  if (int_ == 200)
    printf("--- 08 (42-01) OK ---\n");
  else {
    printf("*** 08 (42-01) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned char)100 - (unsigned char)50;
  if (int_ == 50)
    printf("--- 08 (42-02) OK ---\n");
  else {
    printf("*** 08 (42-02) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned char)100 * (unsigned char)100;
  if (int_ == 10000)
    printf("--- 08 (42-03) OK ---\n");
  else {
    printf("*** 08 (42-03) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned char)100 / (unsigned char)50;
  if (int_ == 2)
    printf("--- 08 (42-04) OK ---\n");
  else {
    printf("*** 08 (42-04) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned char)100 % (unsigned char)3;
  if (int_ == 1)
    printf("--- 08 (42-05) OK ---\n");
  else {
    printf("*** 08 (42-05) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  uns_int = (unsigned char)1 << (unsigned char)3;
  if (uns_int == 8)
    printf("--- 08 (42-06) OK ---\n");
  else {
    printf("*** 08 (42-06) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = (unsigned char)8 >> (unsigned char)3;
  if (uns_int == 1)
    printf("--- 08 (42-07) OK ---\n");
  else {
    printf("*** 08 (42-07) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  int_ = (unsigned char)100 < (unsigned char)101;
  if (int_ == 1)
    printf("--- 08 (42-08) OK ---\n");
  else {
    printf("*** 08 (42-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned char)10 > (unsigned char)50;
  if (int_ == 0)
    printf("--- 08 (42-09) OK ---\n");
  else {
    printf("*** 08 (42-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned char)100 <= (unsigned char)100;
  if (int_ == 1)
    printf("--- 08 (42-10) OK ---\n");
  else {
    printf("*** 08 (42-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned char)10 >= (unsigned char)50;
  if (int_ == 0)
    printf("--- 08 (42-11) OK ---\n");
  else {
    printf("*** 08 (42-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned char)100 == (unsigned char)100;
  if (int_ == 1)
    printf("--- 08 (42-12) OK ---\n");
  else {
    printf("*** 08 (42-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned char)1 != (unsigned char)1;
  if (int_ == 0)
    printf("--- 08 (42-13) OK ---\n");
  else {
    printf("*** 08 (42-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned char)10 & (unsigned char)7;
  if (int_ == 2)
    printf("--- 08 (42-14) OK ---\n");
  else {
    printf("*** 08 (42-14) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned char)1 ^ (unsigned char)2;
  if (int_ == 3)
    printf("--- 08 (42-15) OK ---\n");
  else {
    printf("*** 08 (42-15) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned char)10 | (unsigned char)7;
  if (int_ == 15)
    printf("--- 08 (42-16) OK ---\n");
  else {
    printf("*** 08 (42-16) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned char)100 && (unsigned char)0;
  if (int_ == 0)
    printf("--- 08 (42-17) OK ---\n");
  else {
    printf("*** 08 (42-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned char)0 || (unsigned char)100;
  if (int_ == 1)
    printf("--- 08 (42-18) OK ---\n");
  else {
    printf("*** 08 (42-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  printf("08 END  \n");
}
