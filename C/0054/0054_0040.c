#include<stdio.h>
 

int main()
{
  int                int_;

  printf("05 START\n");

  int_ = (int)100 + (int)100;
  if (int_ == 200)
    printf("--- 05 (39-01) OK ---\n");
  else {
    printf("*** 05 (39-01) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)100 - (int)50;
  if (int_ == 50)
    printf("--- 05 (39-02) OK ---\n");
  else {
    printf("*** 05 (39-02) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)100 * (int)100;
  if (int_ == 10000)
    printf("--- 05 (39-03) OK ---\n");
  else {
    printf("*** 05 (39-03) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)100 / (int)50;
  if (int_ == 2)
    printf("--- 05 (39-04) OK ---\n");
  else {
    printf("*** 05 (39-04) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)100 % (int)3;
  if (int_ == 1)
    printf("--- 05 (39-05) OK ---\n");
  else {
    printf("*** 05 (39-05) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)1 << (int)3;
  if (int_ == 8)
    printf("--- 05 (39-06) OK ---\n");
  else {
    printf("*** 05 (39-06) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)8 >> (int)3;
  if (int_ == 1)
    printf("--- 05 (39-07) OK ---\n");
  else {
    printf("*** 05 (39-07) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)100 < (int)101;
  if (int_ == 1)
    printf("--- 05 (39-08) OK ---\n");
  else {
    printf("*** 05 (39-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)10 > (int)50;
  if (int_ == 0)
    printf("--- 05 (39-09) OK ---\n");
  else {
    printf("*** 05 (39-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)100 <= (int)100;
  if (int_ == 1)
    printf("--- 05 (39-10) OK ---\n");
  else {
    printf("*** 05 (39-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)10 >= (int)50;
  if (int_ == 0)
    printf("--- 05 (39-11) OK ---\n");
  else {
    printf("*** 05 (39-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)100 == (int)100;
  if (int_ == 1)
    printf("--- 05 (39-12) OK ---\n");
  else {
    printf("*** 05 (39-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)1 != (int)1;
  if (int_ == 0)
    printf("--- 05 (39-13) OK ---\n");
  else {
    printf("*** 05 (39-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)10 & (int)7;
  if (int_ == 2)
    printf("--- 05 (39-14) OK ---\n");
  else {
    printf("*** 05 (39-14) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)1 ^ (int)2;
  if (int_ == 3)
    printf("--- 05 (39-15) OK ---\n");
  else {
    printf("*** 05 (39-15) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)10 | (int)7;
  if (int_ == 15)
    printf("--- 05 (39-16) OK ---\n");
  else {
    printf("*** 05 (39-16) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)100 && (int)0;
  if (int_ == 0)
    printf("--- 05 (39-17) OK ---\n");
  else {
    printf("*** 05 (39-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)0 || (int)100;
  if (int_ == 1)
    printf("--- 05 (39-18) OK ---\n");
  else {
    printf("*** 05 (39-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  printf("05 END  \n");
}
