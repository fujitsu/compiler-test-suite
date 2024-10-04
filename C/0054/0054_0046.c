#include<stdio.h>
 

int main()
{
  unsigned long int  uns_lon;
  int                int_   ;

  printf("11 START\n");

  uns_lon = (unsigned long int)100 + (unsigned long int)100;
  if (uns_lon == 200)
    printf("--- 11 (45-01) OK ---\n");
  else {
    printf("*** 11 (45-01) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = (unsigned long int)100 - (unsigned long int)50;
  if (uns_lon == 50)
    printf("--- 11 (45-02) OK ---\n");
  else {
    printf("*** 11 (45-02) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = (unsigned long int)100 * (unsigned long int)100;
  if (uns_lon == 10000)
    printf("--- 11 (45-03) OK ---\n");
  else {
    printf("*** 11 (45-03) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = (unsigned long int)100 / (unsigned long int)50;
  if (uns_lon == 2)
    printf("--- 11 (45-04) OK ---\n");
  else {
    printf("*** 11 (45-04) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = (unsigned long int)100 % (unsigned long int)3;
  if (uns_lon == 1)
    printf("--- 11 (45-05) OK ---\n");
  else {
    printf("*** 11 (45-05) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = (unsigned long int)1 << (unsigned long int)3;
  if (uns_lon == 8)
    printf("--- 11 (45-06) OK ---\n");
  else {
    printf("*** 11 (45-06) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = (unsigned long int)8 >> (unsigned long int)3;
  if (uns_lon == 1)
    printf("--- 11 (45-07) OK ---\n");
  else {
    printf("*** 11 (45-07) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  int_ = (unsigned long int)100 < (unsigned long int)101;
  if (int_ == 1)
    printf("--- 11 (45-08) OK ---\n");
  else {
    printf("*** 11 (45-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned long int)10 > (unsigned long int)50;
  if (int_ == 0)
    printf("--- 11 (45-09) OK ---\n");
  else {
    printf("*** 11 (45-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned long int)100 <= (unsigned long int)100;
  if (int_ == 1)
    printf("--- 11 (45-10) OK ---\n");
  else {
    printf("*** 11 (45-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned long int)10 >= (unsigned long int)50;
  if (int_ == 0)
    printf("--- 11 (45-11) OK ---\n");
  else {
    printf("*** 11 (45-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned long int)100 == (unsigned long int)100;
  if (int_ == 1)
    printf("--- 11 (45-12) OK ---\n");
  else {
    printf("*** 11 (45-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned long int)1 != (unsigned long int)1;
  if (int_ == 0)
    printf("--- 11 (45-13) OK ---\n");
  else {
    printf("*** 11 (45-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  uns_lon = (unsigned long int)10 & (unsigned long int)7;
  if (uns_lon == 2)
    printf("--- 11 (45-14) OK ---\n");
  else {
    printf("*** 11 (45-14) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = (unsigned long int)1 ^ (unsigned long int)2;
  if (uns_lon == 3)
    printf("--- 11 (45-15) OK ---\n");
  else {
    printf("*** 11 (45-15) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  uns_lon = (unsigned long int)10 | (unsigned long int)7;
  if (uns_lon == 15)
    printf("--- 11 (45-16) OK ---\n");
  else {
    printf("*** 11 (45-16) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

  int_ = (unsigned long int)100 && (unsigned long int)0;
  if (int_ == 0)
    printf("--- 11 (45-17) OK ---\n");
  else {
    printf("*** 11 (45-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (unsigned long int)0 || (unsigned long int)100;
  if (int_ == 1)
    printf("--- 11 (45-18) OK ---\n");
  else {
    printf("*** 11 (45-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  printf("11 END  \n");
}
