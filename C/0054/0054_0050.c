#include<stdio.h>
 

int main()
{
  int                int_;
  unsigned int       uns_int;
  unsigned long int  uns_lon;

  printf("16 START\n");

  int_ = (int)100 + (unsigned char)100;
  if (int_ == 200)
    printf("--- 16 (50-01) OK ---\n");
  else {
    printf("*** 16 (50-01) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  uns_int = (int)100 - (unsigned int)50;
  if (uns_int == 50)
    printf("--- 16 (50-02) OK ---\n");
  else {
    printf("*** 16 (50-02) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  int_ = (int)100 * (unsigned short int)100;
  if (int_ == 10000)
    printf("--- 16 (50-03) OK ---\n");
  else {
    printf("*** 16 (50-03) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  uns_lon = (int)100 / (unsigned long int)50;
  if (uns_lon == 2)
    printf("--- 16 (50-04) OK ---\n");
  else {
    printf("*** 16 (50-04) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  int_ = (int)100 % (char)3;
  if (int_ == 1)
    printf("--- 16 (50-05) OK ---\n");
  else {
    printf("*** 16 (50-05) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)1 << (short int)3;
  if (int_ == 8)
    printf("--- 16 (50-06) OK ---\n");
  else {
    printf("*** 16 (50-06) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)8 >> (long int)3;
  if (int_ == 1)
    printf("--- 16 (50-07) OK ---\n");
  else {
    printf("*** 16 (50-07) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)100 < (float)101.0;
  if (int_ == 1)
    printf("--- 16 (50-08) OK ---\n");
  else {
    printf("*** 16 (50-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)10 > (double)50.0;
  if (int_ == 0)
    printf("--- 16 (50-09) OK ---\n");
  else {
    printf("*** 16 (50-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)100 <= (long double)100.0;
  if (int_ == 1)
    printf("--- 16 (50-10) OK ---\n");
  else {
    printf("*** 16 (50-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)10 >= (float)50.0;
  if (int_ == 0)
    printf("--- 16 (50-11) OK ---\n");
  else {
    printf("*** 16 (50-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)100 == (double)100.0;
  if (int_ == 1)
    printf("--- 16 (50-12) OK ---\n");
  else {
    printf("*** 16 (50-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)1 != (long double)1.0;
  if (int_ == 0)
    printf("--- 16 (50-13) OK ---\n");
  else {
    printf("*** 16 (50-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)10 & (unsigned char)7;
  if (int_ == 2)
    printf("--- 16 (50-14) OK ---\n");
  else {
    printf("*** 16 (50-14) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  uns_int = (int)1 ^ (unsigned int)2;
  if (uns_int == 3)
    printf("--- 16 (50-15) OK ---\n");
  else {
    printf("*** 16 (50-15) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  int_ = (int)10 | (unsigned short int)7;
  if (int_ == 15)
    printf("--- 16 (50-16) OK ---\n");
  else {
    printf("*** 16 (50-16) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)100 && (unsigned long int)0;
  if (int_ == 0)
    printf("--- 16 (50-17) OK ---\n");
  else {
    printf("*** 16 (50-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (int)0 || (char)100;
  if (int_ == 1)
    printf("--- 16 (50-18) OK ---\n");
  else {
    printf("*** 16 (50-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  printf("16 END  \n");
}
