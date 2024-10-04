#include<stdio.h>
 

int main()
{

  int                int_;
  long int           lon_;
  unsigned int       uns_int;

  printf("15 START\n");

  int_ = (char)100 + (int)100;
  if (int_ == 200)
    printf("--- 15 (49-01) OK ---\n");
  else {
    printf("*** 15 (49-01) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)100 - (short int)50;
  if (int_ == 50)
    printf("--- 15 (49-02) OK ---\n");
  else {
    printf("*** 15 (49-02) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  lon_ = (char)100 * (long int)100;
  if (lon_ == 10000)
    printf("--- 15 (49-03) OK ---\n");
  else {
    printf("*** 15 (49-03) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }

  int_ = (char)100 / (unsigned char)50;
  if (int_ == 2)
    printf("--- 15 (49-04) OK ---\n");
  else {
    printf("*** 15 (49-04) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  uns_int = (char)100 % (unsigned int)3;
  if (uns_int == 1)
    printf("--- 15 (49-05) OK ---\n");
  else {
    printf("*** 15 (49-05) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  int_ = (char)1 << (unsigned short int)3;
  if (int_ == 8)
    printf("--- 15 (49-06) OK ---\n");
  else {
    printf("*** 15 (49-06) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)8 >> (unsigned long int)3;
  if (int_ == 1)
    printf("--- 15 (49-07) OK ---\n");
  else {
    printf("*** 15 (49-07) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)100 < (float)101.0;
  if (int_ == 1)
    printf("--- 15 (49-08) OK ---\n");
  else {
    printf("*** 15 (49-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)10 > (double)50.0;
  if (int_ == 0)
    printf("--- 15 (49-09) OK ---\n");
  else {
    printf("*** 15 (49-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)100 <= (long double)100.0;
  if (int_ == 1)
    printf("--- 15 (49-10) OK ---\n");
  else {
    printf("*** 15 (49-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)10 >= (int)50;
  if (int_ == 0)
    printf("--- 15 (49-11) OK ---\n");
  else {
    printf("*** 15 (49-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)100 == (short int)100;
  if (int_ == 1)
    printf("--- 15 (49-12) OK ---\n");
  else {
    printf("*** 15 (49-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)1 != (long int)1;
  if (int_ == 0)
    printf("--- 15 (49-13) OK ---\n");
  else {
    printf("*** 15 (49-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)10 & (unsigned char)7;
  if (int_ == 2)
    printf("--- 15 (49-14) OK ---\n");
  else {
    printf("*** 15 (49-14) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  uns_int = (char)1 ^ (unsigned int)2;
  if (uns_int == 3)
    printf("--- 15 (49-15) OK ---\n");
  else {
    printf("*** 15 (49-15) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

  int_ = (char)10 | (unsigned short int)7;
  if (int_ == 15)
    printf("--- 15 (49-16) OK ---\n");
  else {
    printf("*** 15 (49-16) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)100 && (unsigned long int)0;
  if (int_ == 0)
    printf("--- 15 (49-17) OK ---\n");
  else {
    printf("*** 15 (49-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (char)0 || (float)100;
  if (int_ == 1)
    printf("--- 15 (49-18) OK ---\n");
  else {
    printf("*** 15 (49-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  printf("15 END  \n");
}
