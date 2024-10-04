#include<stdio.h>
 

int main()
{
  int                int_   ;
  unsigned long int  uns_lon;
  float              float_ ;
  double             double_;

  printf("22 START\n");

  double_ = (unsigned long int)100 + (double)100.0;
  if (double_ == 200.0)
    printf("--- 22 (56-01) OK ---\n");
  else {
    printf("*** 22 (56-01) NG ***\n");
    printf("DOUBLE_ = %e\n" , double_);
  }

  uns_lon = (unsigned long int)100 - (char)50;
  if (uns_lon == 50)
    printf("--- 22 (56-02) OK ---\n");
  else {
    printf("*** 22 (56-02) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = (unsigned long int)100 * (short int)100;
  if (uns_lon == 10000)
    printf("--- 22 (56-03) OK ---\n");
  else {
    printf("*** 22 (56-03) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  float_ = (unsigned long int)100 / (float)50.0;
  if (float_ == 2.0f)
    printf("--- 22 (56-04) OK ---\n");
  else {
    printf("*** 22 (56-04) NG ***\n");
    printf("FLOAT_ = %e\n" , float_);
  }

  uns_lon = (unsigned long int)100 % (unsigned short int)3;
  if (uns_lon == 1)
    printf("--- 22 (56-05) OK ---\n");
  else {
    printf("*** 22 (56-05) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = (unsigned long int)1 << (short int)3;
  if (uns_lon == 8)
    printf("--- 22 (56-06) OK ---\n");
  else {
    printf("*** 22 (56-06) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = (unsigned long int)8 >> (int)3;
  if (uns_lon == 1)
    printf("--- 22 (56-07) OK ---\n");
  else {
    printf("*** 22 (56-07) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  int_ = (unsigned long int)100 < (unsigned long int)101;
  if (int_ == 1)
    printf("--- 22 (56-08) OK ---\n");
  else {
    printf("*** 22 (56-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned long int)10 > (short int)50;
  if (int_ == 0)
    printf("--- 22 (56-09) OK ---\n");
  else {
    printf("*** 22 (56-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned long int)100 <= (long int)100;
  if (int_ == 1)
    printf("--- 22 (56-10) OK ---\n");
  else {
    printf("*** 22 (56-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned long int)10 >= (long double)50.0;
  if (int_ == 0)
    printf("--- 22 (56-11) OK ---\n");
  else {
    printf("*** 22 (56-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned long int)100 == (double)100.0;
  if (int_ == 1)
    printf("--- 22 (56-12) OK ---\n");
  else {
    printf("*** 22 (56-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned long int)1 != (float)1.0;
  if (int_ == 0)
    printf("--- 22 (56-13) OK ---\n");
  else {
    printf("*** 22 (56-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  uns_lon = (unsigned long int)10 & (char)7;
  if (uns_lon == 2)
    printf("--- 22 (56-14) OK ---\n");
  else {
    printf("*** 22 (56-14) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = (unsigned long int)1 ^ (short int)2;
  if (uns_lon == 3)
    printf("--- 22 (56-15) OK ---\n");
  else {
    printf("*** 22 (56-15) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = (unsigned long int)10 | (unsigned int)7;
  if (uns_lon == 15)
    printf("--- 22 (56-16) OK ---\n");
  else {
    printf("*** 22 (56-16) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  int_ = (unsigned long int)100 && (double)0.0;
  if (int_ == 0)
    printf("--- 22 (56-17) OK ---\n");
  else {
    printf("*** 22 (56-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned long int)0 || (short int)100;
  if (int_ == 1)
    printf("--- 22 (56-18) OK ---\n");
  else {
    printf("*** 22 (56-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  printf("22 END  \n");
}
