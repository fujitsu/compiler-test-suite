#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  long int           lon_;
  int                int_;
 
  printf(" START\n");
 
 
  lon_ = (long int)100 + (long int)100;
  if (lon_ == 200)
    printf("---  (41-01) OK ---\n");
  else {
    printf("***  (41-01) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }
 
 
  lon_ = (long int)100 - (long int)50;
  if (lon_ == 50)
    printf("---  (41-02) OK ---\n");
  else {
    printf("***  (41-02) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }
 
 
  lon_ = (long int)100 * (long int)100;
  if (lon_ == 10000)
    printf("---  (41-03) OK ---\n");
  else {
    printf("***  (41-03) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }
 
 
  lon_ = (long int)100 / (long int)50;
  if (lon_ == 2)
    printf("---  (41-04) OK ---\n");
  else {
    printf("***  (41-04) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }
 
 
  lon_ = (long int)100 % (long int)3;
  if (lon_ == 1)
    printf("---  (41-05) OK ---\n");
  else {
    printf("***  (41-05) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }
 
 
  lon_ = (long int)1 << (long int)3;
  if (lon_ == 8)
    printf("---  (41-06) OK ---\n");
  else {
    printf("***  (41-06) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }
 
 
  lon_ = (long int)8 >> (long int)3;
  if (lon_ == 1)
    printf("---  (41-07) OK ---\n");
  else {
    printf("***  (41-07) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }
 
 
  int_ = (long int)100 < (long int)101;
  if (int_ == 1)
    printf("---  (41-08) OK ---\n");
  else {
    printf("***  (41-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (long int)10 > (long int)50;
  if (int_ == 0)
    printf("---  (41-09) OK ---\n");
  else {
    printf("***  (41-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (long int)100 <= (long int)100;
  if (int_ == 1)
    printf("---  (41-10) OK ---\n");
  else {
    printf("***  (41-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (long int)10 >= (long int)50;
  if (int_ == 0)
    printf("---  (41-11) OK ---\n");
  else {
    printf("***  (41-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (long int)100 == (long int)100;
  if (int_ == 1)
    printf("---  (41-12) OK ---\n");
  else {
    printf("***  (41-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (long int)1 != (long int)1;
  if (int_ == 0)
    printf("---  (41-13) OK ---\n");
  else {
    printf("***  (41-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  lon_ = (long int)10 & (long int)7;
  if (lon_ == 2)
    printf("---  (41-14) OK ---\n");
  else {
    printf("***  (41-14) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }
 
 
  lon_ = (long int)1 ^ (long int)2;
  if (lon_ == 3)
    printf("---  (41-15) OK ---\n");
  else {
    printf("***  (41-15) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }
 
 
  lon_ = (long int)10 | (long int)7;
  if (lon_ == 15)
    printf("---  (41-16) OK ---\n");
  else {
    printf("***  (41-16) NG ***\n");
    printf("LON_ = %x\n" , lon_);
  }
 
 
  int_ = (long int)100 && (long int)0;
  if (int_ == 0)
    printf("---  (41-17) OK ---\n");
  else {
    printf("***  (41-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (long int)0 || (long int)100;
  if (int_ == 1)
    printf("---  (41-18) OK ---\n");
  else {
    printf("***  (41-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  printf(" END  \n");
exit (0);
}
