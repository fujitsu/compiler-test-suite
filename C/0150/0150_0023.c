#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int                int_   ;
  unsigned int       uns_int;
  unsigned long int  uns_lon;
  float              float_ ;
  double             double_;
  long double        lon_dbl;
 
  printf(" START\n");
 
 
  lon_dbl = (unsigned int)100 + (long double)100.0;
  if (lon_dbl == 200.0l)
    printf("---  (54-01) OK ---\n");
  else {
    printf("***  (54-01) NG ***\n");
    printf("LON_DBL = %e\n" , lon_dbl);
  }
 
 
  float_ = (unsigned int)100 - (float)50.0;
  if (float_ == 50.0f)
    printf("---  (54-02) OK ---\n");
  else {
    printf("***  (54-02) NG ***\n");
    printf("FLOAT_ = %e\n" , float_);
  }
 
 
  double_ = (unsigned int)100 * (double)100.0;
  if (double_ == 10000.0)
    printf("---  (54-03) OK ---\n");
  else {
    printf("***  (54-03) NG ***\n");
    printf("DOUBLE_ = %e\n" , double_);
  }
 
 
  double_ = (unsigned int)100 / (double)50.0;
  if (double_ == 2.0)
    printf("---  (54-04) OK ---\n");
  else {
    printf("***  (54-04) NG ***\n");
    printf("DOUBLE_ = %e\n" , double_);
  }
 
 
  uns_int = (unsigned int)100 % (char)3;
  if (uns_int == 1)
    printf("---  (54-05) OK ---\n");
  else {
    printf("***  (54-05) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }
 
 
  uns_int = (unsigned int)1 << (int)3;
  if (uns_int == 8)
    printf("---  (54-06) OK ---\n");
  else {
    printf("***  (54-06) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }
 
 
  uns_int = (unsigned int)8 >> (short int)3;
  if (uns_int == 1)
    printf("---  (54-07) OK ---\n");
  else {
    printf("***  (54-07) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }
 
 
  int_ = (unsigned int)100 < (unsigned char)101;
  if (int_ == 1)
    printf("---  (54-08) OK ---\n");
  else {
    printf("***  (54-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned int)10 > (unsigned short int)50;
  if (int_ == 0)
    printf("---  (54-09) OK ---\n");
  else {
    printf("***  (54-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned int)100 <= (int)100;
  if (int_ == 1)
    printf("---  (54-10) OK ---\n");
  else {
    printf("***  (54-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned int)10 >= (char)50;
  if (int_ == 0)
    printf("---  (54-11) OK ---\n");
  else {
    printf("***  (54-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned int)100 == (unsigned short int)100;
  if (int_ == 1)
    printf("---  (54-12) OK ---\n");
  else {
    printf("***  (54-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned int)1 != (unsigned long int)1;
  if (int_ == 0)
    printf("---  (54-13) OK ---\n");
  else {
    printf("***  (54-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  uns_int = (unsigned int)10 & (int)7;
  if (uns_int == 2)
    printf("---  (54-14) OK ---\n");
  else {
    printf("***  (54-14) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }
 
 
  uns_int = (unsigned int)1 ^ (unsigned short int)2;
  if (uns_int == 3)
    printf("---  (54-15) OK ---\n");
  else {
    printf("***  (54-15) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }
 
 
  uns_lon = (unsigned int)10 | (unsigned long int)7;
  if (uns_lon == 15)
    printf("---  (54-16) OK ---\n");
  else {
    printf("***  (54-16) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }
 
 
  int_ = (unsigned int)100 && (char)0;
  if (int_ == 0)
    printf("---  (54-17) OK ---\n");
  else {
    printf("***  (54-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned int)0 || (unsigned long int)100;
  if (int_ == 1)
    printf("---  (54-18) OK ---\n");
  else {
    printf("***  (54-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  printf(" END  \n");
exit (0);
}
