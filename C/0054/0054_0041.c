#include<stdio.h>
 

int main()
{
  int                int_;

  printf("06 START\n");

  int_ = (short int)100 + (short int)100;
  if (int_ == 200)
    printf("--- 06 (40-01) OK ---\n");
  else {
    printf("*** 06 (40-01) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (short int)100 - (short int)50;
  if (int_ == 50)
    printf("--- 06 (40-02) OK ---\n");
  else {
    printf("*** 06 (40-02) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (short int)100 * (short int)100;
  if (int_ == 10000)
    printf("--- 06 (40-03) OK ---\n");
  else {
    printf("*** 06 (40-03) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (short int)100 / (short int)50;
  if (int_ == 2)
    printf("--- 06 (40-04) OK ---\n");
  else {
    printf("*** 06 (40-04) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (short int)100 % (short int)3;
  if (int_ == 1)
    printf("--- 06 (40-05) OK ---\n");
  else {
    printf("*** 06 (40-05) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (short int)1 << (short int)3;
  if (int_ == 8)
    printf("--- 06 (40-06) OK ---\n");
  else {
    printf("*** 06 (40-06) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (short int)8 >> (short int)3;
  if (int_ == 1)
    printf("--- 06 (40-07) OK ---\n");
  else {
    printf("*** 06 (40-07) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (short int)100 < (short int)101;
  if (int_ == 1)
    printf("--- 06 (40-08) OK ---\n");
  else {
    printf("*** 06 (40-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (short int)10 > (short int)50;
  if (int_ == 0)
    printf("--- 06 (40-09) OK ---\n");
  else {
    printf("*** 06 (40-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (short int)100 <= (short int)100;
  if (int_ == 1)
    printf("--- 06 (40-10) OK ---\n");
  else {
    printf("*** 06 (40-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (short int)10 >= (short int)50;
  if (int_ == 0)
    printf("--- 06 (40-11) OK ---\n");
  else {
    printf("*** 06 (40-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (short int)100 == (short int)100;
  if (int_ == 1)
    printf("--- 06 (40-12) OK ---\n");
  else {
    printf("*** 06 (40-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (short int)1 != (short int)1;
  if (int_ == 0)
    printf("--- 06 (40-13) OK ---\n");
  else {
    printf("*** 06 (40-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (short int)10 & (short int)7;
  if (int_ == 2)
    printf("--- 06 (40-14) OK ---\n");
  else {
    printf("*** 06 (40-14) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (short int)1 ^ (short int)2;
  if (int_ == 3)
    printf("--- 06 (40-15) OK ---\n");
  else {
    printf("*** 06 (40-15) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (short int)10 | (short int)7;
  if (int_ == 15)
    printf("--- 06 (40-16) OK ---\n");
  else {
    printf("*** 06 (40-16) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (short int)100 && (short int)0;
  if (int_ == 0)
    printf("--- 06 (40-17) OK ---\n");
  else {
    printf("*** 06 (40-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (short int)0 || (short int)100;
  if (int_ == 1)
    printf("--- 06 (40-18) OK ---\n");
  else {
    printf("*** 06 (40-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  printf("06 END  \n");
}
