#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  float  float_;
  int    int_;
 
  printf(" START\n");
 
 
  float_ = (float)1.23e5 + (char)10;
  if (float_ == 1.2301e5f)
    printf("---  (57-01) OK ---\n");
  else {
    printf("***  (57-01) NG ***\n");
    printf("FLOAT_ = %e\n" , float_);
  }
 
 
  float_ = (float)100.0 - (int)50;
  if (float_ == 50.0f)
    printf("---  (57-02) OK ---\n");
  else {
    printf("***  (57-02) NG ***\n");
    printf("FLOAT_ = %e\n" , float_);
  }
 
 
  float_ = (float)1e5 * (long int)100000;
  if (float_ == 1e10f)
    printf("---  (57-03) OK ---\n");
  else {
    printf("***  (57-03) NG ***\n");
    printf("FLOAT_ = %e\n" , float_);
  }
 
 
  float_ = (float)1e5 / (short int)5;
  if (float_ == 2e4f)
    printf("---  (57-04) OK ---\n");
  else {
    printf("***  (57-04) NG ***\n");
    printf("FLOAT_ = %e\n" , float_);
  }
 
 
  int_ = (float)100.0 < (unsigned char)101;
  if (int_ == 1)
    printf("---  (57-05) OK ---\n");
  else {
    printf("***  (57-05) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (float)10.0 > (unsigned int)50;
  if (int_ == 0)
    printf("---  (57-06) OK ---\n");
  else {
    printf("***  (57-06) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (float)100.0 <= (unsigned short int)100;
  if (int_ == 1)
    printf("---  (57-07) OK ---\n");
  else {
    printf("***  (57-07) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (float)10.0001 >= (unsigned long int)50;
  if (int_ == 0)
    printf("---  (57-08) OK ---\n");
  else {
    printf("***  (57-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (float)100.0 == (double)100.0;
  if (int_ == 1)
    printf("---  (57-09) OK ---\n");
  else {
    printf("***  (57-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (float)1.1 != (long double)1.00001;
  if (int_ == 1)
    printf("---  (57-10) OK ---\n");
  else {
    printf("***  (57-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (float)100.0 && (char)0;
  if (int_ == 0)
    printf("---  (57-11) OK ---\n");
  else {
    printf("***  (57-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (float)0.0 || (int)100;
  if (int_ == 1)
    printf("---  (57-12) OK ---\n");
  else {
    printf("***  (57-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  printf(" END  \n");
exit (0);
}
