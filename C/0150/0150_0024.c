#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int                int_   ;
  long int           lon_   ;
  unsigned int       uns_int;
  unsigned long int  uns_lon;
  float              float_ ;
 
  printf(" START\n");
 
 
  int_ = (unsigned short int)100 + (char)100;
  if (int_ == 200)
    printf("---  (55-01) OK ---\n");
  else {
    printf("***  (55-01) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)100 - (short int)50;
  if (int_ == 50)
    printf("---  (55-02) OK ---\n");
  else {
    printf("***  (55-02) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  float_ = (unsigned short int)100 * (float)100.0;
  if (float_ == 10000.0f)
    printf("---  (55-03) OK ---\n");
  else {
    printf("***  (55-03) NG ***\n");
    printf("FLOAT_ = %e\n" , float_);
  }
 
 
  lon_ = (unsigned short int)100 / (long int)50;
  if (lon_ == 2)
    printf("---  (55-04) OK ---\n");
  else {
    printf("***  (55-04) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }
 
 
  lon_ = (unsigned short int)100 % (long int)3;
  if (lon_ == 1)
    printf("---  (55-05) OK ---\n");
  else {
    printf("***  (55-05) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }
 
 
  uns_int = (unsigned short int)1 << (unsigned long int)3;
  if (uns_int == 8)
    printf("---  (55-06) OK ---\n");
  else {
    printf("***  (55-06) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }
 
 
  uns_int = (unsigned short int)8 >> (char)3;
  if (uns_int == 1)
    printf("---  (55-07) OK ---\n");
  else {
    printf("***  (55-07) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }
 
 
  int_ = (unsigned short int)100 < (unsigned long int)101;
  if (int_ == 1)
    printf("---  (55-08) OK ---\n");
  else {
    printf("***  (55-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)10 > (unsigned long int)50;
  if (int_ == 0)
    printf("---  (55-09) OK ---\n");
  else {
    printf("***  (55-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)100 <= (short int)100;
  if (int_ == 1)
    printf("---  (55-10) OK ---\n");
  else {
    printf("***  (55-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)10 >= (short int)50;
  if (int_ == 0)
    printf("---  (55-11) OK ---\n");
  else {
    printf("***  (55-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)100 == (char)100;
  if (int_ == 1)
    printf("---  (55-12) OK ---\n");
  else {
    printf("***  (55-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)1 != (char)1;
  if (int_ == 0)
    printf("---  (55-13) OK ---\n");
  else {
    printf("***  (55-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  lon_ = (unsigned short int)10 & (long int)7;
  if (lon_ == 2)
    printf("---  (55-14) OK ---\n");
  else {
    printf("***  (55-14) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }
 
 
  lon_ = (unsigned short int)1 ^ (long int)2;
  if (lon_ == 3)
    printf("---  (55-15) OK ---\n");
  else {
    printf("***  (55-15) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }
 
 
  uns_lon = (unsigned short int)10 | (unsigned long int)7;
  if (uns_lon == 15)
    printf("---  (55-16) OK ---\n");
  else {
    printf("***  (55-16) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }
 
 
  int_ = (unsigned short int)100 && (double)0.0;
  if (int_ == 0)
    printf("---  (55-17) OK ---\n");
  else {
    printf("***  (55-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned short int)0 || (unsigned long int)100;
  if (int_ == 1)
    printf("---  (55-18) OK ---\n");
  else {
    printf("***  (55-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  printf(" END  \n");
exit (0);
}
