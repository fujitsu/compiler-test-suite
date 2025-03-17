#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  unsigned int       uns_int;
  int                int_   ;
 
  printf(" START\n");
 
 
  int_ = (unsigned short int)100 + (unsigned short int)100;
  if (int_ == 200)
    printf("---  (44-01) OK ---\n");
  else {
    printf("***  (44-01) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)100 - (unsigned short int)50;
  if (int_ == 50)
    printf("---  (44-02) OK ---\n");
  else {
    printf("***  (44-02) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)100 * (unsigned short int)100;
  if (int_ == 10000)
    printf("---  (44-03) OK ---\n");
  else {
    printf("***  (44-03) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)100 / (unsigned short int)50;
  if (int_ == 2)
    printf("---  (44-04) OK ---\n");
  else {
    printf("***  (44-04) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)100 % (unsigned short int)3;
  if (int_ == 1)
    printf("---  (44-05) OK ---\n");
  else {
    printf("***  (44-05) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  uns_int = (unsigned short int)1 << (unsigned short int)3;
  if (uns_int == 8)
    printf("---  (44-06) OK ---\n");
  else {
    printf("***  (44-06) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }
 
 
  uns_int = (unsigned short int)8 >> (unsigned short int)3;
  if (uns_int == 1)
    printf("---  (44-07) OK ---\n");
  else {
    printf("***  (44-07) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }
 
 
  int_ = (unsigned short int)100 < (unsigned short int)101;
  if (int_ == 1)
    printf("---  (44-08) OK ---\n");
  else {
    printf("***  (44-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)10 > (unsigned short int)50;
  if (int_ == 0)
    printf("---  (44-09) OK ---\n");
  else {
    printf("***  (44-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)100 <= (unsigned short int)100;
  if (int_ == 1)
    printf("---  (44-10) OK ---\n");
  else {
    printf("***  (44-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)10 >= (unsigned short int)50;
  if (int_ == 0)
    printf("---  (44-11) OK ---\n");
  else {
    printf("***  (44-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)100 == (unsigned short int)100;
  if (int_ == 1)
    printf("---  (44-12) OK ---\n");
  else {
    printf("***  (44-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)1 != (unsigned short int)1;
  if (int_ == 0)
    printf("---  (44-13) OK ---\n");
  else {
    printf("***  (44-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)10 & (unsigned short int)7;
  if (int_ == 2)
    printf("---  (44-14) OK ---\n");
  else {
    printf("***  (44-14) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)1 ^ (unsigned short int)2;
  if (int_ == 3)
    printf("---  (44-15) OK ---\n");
  else {
    printf("***  (44-15) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)10 | (unsigned short int)7;
  if (int_ == 15)
    printf("---  (44-16) OK ---\n");
  else {
    printf("***  (44-16) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)100 && (unsigned short int)0;
  if (int_ == 0)
    printf("---  (44-17) OK ---\n");
  else {
    printf("***  (44-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)0 || (unsigned short int)100;
  if (int_ == 1)
    printf("---  (44-18) OK ---\n");
  else {
    printf("***  (44-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  printf(" END  \n");
exit (0);
}
