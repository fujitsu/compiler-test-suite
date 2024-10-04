#include<stdio.h>
 

int main()
{
  int                int_;

  printf("04 START\n");

  int_ = (char)100 + (char)100;
  if (int_ == 200)
    printf("--- 04 (38-01) OK ---\n");
  else {
    printf("*** 04 (38-01) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)100 - (char)50;
  if (int_ == 50)
    printf("--- 04 (38-02) OK ---\n");
  else {
    printf("*** 04 (38-02) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)100 * (char)100;
  if (int_ == 10000)
    printf("--- 04 (38-03) OK ---\n");
  else {
    printf("*** 04 (38-03) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)100 / (char)50;
  if (int_ == 2)
    printf("--- 04 (38-04) OK ---\n");
  else {
    printf("*** 04 (38-04) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)100 % (char)3;
  if (int_ == 1)
    printf("--- 04 (38-05) OK ---\n");
  else {
    printf("*** 04 (38-05) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)1 << (char)3;
  if (int_ == 8)
    printf("--- 04 (38-06) OK ---\n");
  else {
    printf("*** 04 (38-06) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)8 >> (char)3;
  if (int_ == 1)
    printf("--- 04 (38-07) OK ---\n");
  else {
    printf("*** 04 (38-07) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)100 < (char)101;
  if (int_ == 1)
    printf("--- 04 (38-08) OK ---\n");
  else {
    printf("*** 04 (38-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)10 > (char)50;
  if (int_ == 0)
    printf("--- 04 (38-09) OK ---\n");
  else {
    printf("*** 04 (38-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)100 <= (char)100;
  if (int_ == 1)
    printf("--- 04 (38-10) OK ---\n");
  else {
    printf("*** 04 (38-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)10 >= (char)50;
  if (int_ == 0)
    printf("--- 04 (38-11) OK ---\n");
  else {
    printf("*** 04 (38-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)100 == (char)100;
  if (int_ == 1)
    printf("--- 04 (38-12) OK ---\n");
  else {
    printf("*** 04 (38-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)1 != (char)1;
  if (int_ == 0)
    printf("--- 04 (38-13) OK ---\n");
  else {
    printf("*** 04 (38-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)10 & (char)7;
  if (int_ == 2)
    printf("--- 04 (38-14) OK ---\n");
  else {
    printf("*** 04 (38-14) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)1 ^ (char)2;
  if (int_ == 3)
    printf("--- 04 (38-15) OK ---\n");
  else {
    printf("*** 04 (38-15) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)10 | (char)7;
  if (int_ == 15)
    printf("--- 04 (38-16) OK ---\n");
  else {
    printf("*** 04 (38-16) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)100 && (char)0;
  if (int_ == 0)
    printf("--- 04 (38-17) OK ---\n");
  else {
    printf("*** 04 (38-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)0 || (char)100;
  if (int_ == 1)
    printf("--- 04 (38-18) OK ---\n");
  else {
    printf("*** 04 (38-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  printf("04 END  \n");
}
