#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  double double_;
  int    int_;
 
  printf(" START\n");
 
 
  double_ = (double)1.23e5 + (double)10.0;
  if (double_ == 1.2301e5)
    printf("---  (47-01) OK ---\n");
  else {
    printf("***  (47-01) NG ***\n");
    printf("DOUBLE_ = %e\n" , double_);
  }
 
 
  double_ = (double)100.0 - (double)50.0;
  if (double_ == 50.0)
    printf("---  (47-02) OK ---\n");
  else {
    printf("***  (47-02) NG ***\n");
    printf("DOUBLE_ = %e\n" , double_);
  }
 
 
  double_ = (double)1e5 * (double)1e5;
  if (double_ == 1e10)
    printf("---  (47-03) OK ---\n");
  else {
    printf("***  (47-03) NG ***\n");
    printf("DOUBLE_ = %e\n" , double_);
  }
 
 
  double_ = (double)1e5 / (double)5.0;
  if (double_ == 2e4)
    printf("---  (47-04) OK ---\n");
  else {
    printf("***  (47-04) NG ***\n");
    printf("DOUBLE_ = %e\n" , double_);
  }
 
 
  int_ = (double)100.0 < (double)101.0;
  if (int_ == 1)
    printf("---  (47-05) OK ---\n");
  else {
    printf("***  (47-05) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (double)10.0 > (double)50.0;
  if (int_ == 0)
    printf("---  (47-06) OK ---\n");
  else {
    printf("***  (47-06) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (double)100.0 <= (double)100.0001;
  if (int_ == 1)
    printf("---  (47-07) OK ---\n");
  else {
    printf("***  (47-07) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (double)10.0001 >= (double)50.0;
  if (int_ == 0)
    printf("---  (47-08) OK ---\n");
  else {
    printf("***  (47-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (double)100.0 == (double)100.0;
  if (int_ == 1)
    printf("---  (47-09) OK ---\n");
  else {
    printf("***  (47-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (double)1.0 != (double)1.00001;
  if (int_ == 1)
    printf("---  (47-10) OK ---\n");
  else {
    printf("***  (47-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (double)100.0 && (double)0.0;
  if (int_ == 0)
    printf("---  (47-11) OK ---\n");
  else {
    printf("***  (47-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (double)0.0 || (double)100.0;
  if (int_ == 1)
    printf("---  (47-12) OK ---\n");
  else {
    printf("***  (47-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  printf(" END  \n");
exit (0);
}
