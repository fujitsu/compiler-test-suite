#include<stdio.h>
 

int main()
{
  double double_;
  int    int_;

  printf("24 START\n");

  double_ = (double)1.23e5 + (unsigned short int)10;
  if (double_ == 1.2301e5)
    printf("--- 24 (58-01) OK ---\n");
  else {
    printf("*** 24 (58-01) NG ***\n");
    printf("DOUBLE_ = %e\n" , double_);
  }

  double_ = (double)100.0 - (unsigned long int)50;
  if (double_ == 50.0)
    printf("--- 24 (58-02) OK ---\n");
  else {
    printf("*** 24 (58-02) NG ***\n");
    printf("DOUBLE_ = %e\n" , double_);
  }

  double_ = (double)1e5 * (unsigned int)100000;
  if (double_ == 1e10)
    printf("--- 24 (58-03) OK ---\n");
  else {
    printf("*** 24 (58-03) NG ***\n");
    printf("DOUBLE_ = %e\n" , double_);
  }

  double_ = (double)1e5 / (unsigned char)5;
  if (double_ == 2e4)
    printf("--- 24 (58-04) OK ---\n");
  else {
    printf("*** 24 (58-04) NG ***\n");
    printf("DOUBLE_ = %e\n" , double_);
  }

  int_ = (double)100.0 < (float)101.0;
  if (int_ == 1)
    printf("--- 24 (58-05) OK ---\n");
  else {
    printf("*** 24 (58-05) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (double)10.0 > (long double)50.0;
  if (int_ == 0)
    printf("--- 24 (58-06) OK ---\n");
  else {
    printf("*** 24 (58-06) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (double)100.0 <= (char)100;
  if (int_ == 1)
    printf("--- 24 (58-07) OK ---\n");
  else {
    printf("*** 24 (58-07) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (double)10.0001 >= (int)50;
  if (int_ == 0)
    printf("--- 24 (58-08) OK ---\n");
  else {
    printf("*** 24 (58-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (double)100.0 == (short int)100;
  if (int_ == 1)
    printf("--- 24 (58-09) OK ---\n");
  else {
    printf("*** 24 (58-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (double)1.1 != (long int)1;
  if (int_ == 1)
    printf("--- 24 (58-10) OK ---\n");
  else {
    printf("*** 24 (58-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (double)100.0 && (float)0.0;
  if (int_ == 0)
    printf("--- 24 (58-11) OK ---\n");
  else {
    printf("*** 24 (58-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (double)0.0 || (long double)100.0;
  if (int_ == 1)
    printf("--- 24 (58-12) OK ---\n");
  else {
    printf("*** 24 (58-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  printf("24 END  \n");
}
