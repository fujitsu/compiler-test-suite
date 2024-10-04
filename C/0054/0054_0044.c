#include<stdio.h>
 

int main()
{
  unsigned int       uns_int;
  int                int_   ;

  printf("09 START\n");

  uns_int = (unsigned int)100 + (unsigned int)100;
  if (uns_int == 200)
    printf("--- 09 (43-01) OK ---\n");
  else {
    printf("*** 09 (43-01) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = (unsigned int)100 - (unsigned int)50;
  if (uns_int == 50)
    printf("--- 09 (43-02) OK ---\n");
  else {
    printf("*** 09 (43-02) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = (unsigned int)100 * (unsigned int)100;
  if (uns_int == 10000)
    printf("--- 09 (43-03) OK ---\n");
  else {
    printf("*** 09 (43-03) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = (unsigned int)100 / (unsigned int)50;
  if (uns_int == 2)
    printf("--- 09 (43-04) OK ---\n");
  else {
    printf("*** 09 (43-04) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = (unsigned int)100 % (unsigned int)3;
  if (uns_int == 1)
    printf("--- 09 (43-05) OK ---\n");
  else {
    printf("*** 09 (43-05) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = (unsigned int)1 << (unsigned int)3;
  if (uns_int == 8)
    printf("--- 09 (43-06) OK ---\n");
  else {
    printf("*** 09 (43-06) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = (unsigned int)8 >> (unsigned int)3;
  if (uns_int == 1)
    printf("--- 09 (43-07) OK ---\n");
  else {
    printf("*** 09 (43-07) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  int_ = (unsigned int)100 < (unsigned int)101;
  if (int_ == 1)
    printf("--- 09 (43-08) OK ---\n");
  else {
    printf("*** 09 (43-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned int)10 > (unsigned int)50;
  if (int_ == 0)
    printf("--- 09 (43-09) OK ---\n");
  else {
    printf("*** 09 (43-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned int)100 <= (unsigned int)100;
  if (int_ == 1)
    printf("--- 09 (43-10) OK ---\n");
  else {
    printf("*** 09 (43-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned int)10 >= (unsigned int)50;
  if (int_ == 0)
    printf("--- 09 (43-11) OK ---\n");
  else {
    printf("*** 09 (43-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned int)100 == (unsigned int)100;
  if (int_ == 1)
    printf("--- 09 (43-12) OK ---\n");
  else {
    printf("*** 09 (43-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned int)1 != (unsigned int)1;
  if (int_ == 0)
    printf("--- 09 (43-13) OK ---\n");
  else {
    printf("*** 09 (43-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  uns_int = (unsigned int)10 & (unsigned int)7;
  if (uns_int == 2)
    printf("--- 09 (43-14) OK ---\n");
  else {
    printf("*** 09 (43-14) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = (unsigned int)1 ^ (unsigned int)2;
  if (uns_int == 3)
    printf("--- 09 (43-15) OK ---\n");
  else {
    printf("*** 09 (43-15) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  uns_int = (unsigned int)10 | (unsigned int)7;
  if (uns_int == 15)
    printf("--- 09 (43-16) OK ---\n");
  else {
    printf("*** 09 (43-16) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  int_ = (unsigned int)100 && (unsigned int)0;
  if (int_ == 0)
    printf("--- 09 (43-17) OK ---\n");
  else {
    printf("*** 09 (43-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned int)0 || (unsigned int)100;
  if (int_ == 1)
    printf("--- 09 (43-18) OK ---\n");
  else {
    printf("*** 09 (43-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  printf("09 END  \n");
}
