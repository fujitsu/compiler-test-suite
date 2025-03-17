#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  int          int_num;
  float        float__;
  double       double_;
  long double  lon_dbl;
 
  printf(" START\n");
 
 
  float__ = -(float)1.112233e+10f;
  if (float__ == -1.112233e+10f)
    printf("---  (37-01) OK ---\n");
  else {
    printf("***  (37-01) NG ***\n");
    printf("FLOAT__ = %e\n" , float__);
  }
 
 
  float__ = -(float)0.0f;
  if (float__ == -0.0f)
    printf("---  (37-02) OK ---\n");
  else {
    printf("***  (37-02) NG ***\n");
    printf("FLOAT__ = %e\n" , float__);
  }
 
 
  float__ = -(float)1.000000e-10f;
  if (float__ == -1.000000e-10f)
    printf("---  (37-03) OK ---\n");
  else {
    printf("***  (37-03) NG ***\n");
    printf("FLOAT__ = %e\n" , float__);
  }
 
 
  int_num = !(float)1.112233e+10f;
  if (int_num == 0)
    printf("---  (37-04) OK ---\n");
  else {
    printf("***  (37-04) NG ***\n");
    printf("INT_NUM = %d\n" , int_num);
  }
 
 
  int_num = !(float)0.0f;
  if (int_num == 1)
    printf("---  (37-05) OK ---\n");
  else {
    printf("***  (37-05) NG ***\n");
    printf("INT_NUM = %d\n" , int_num);
  }
 
 
  int_num = !(float)1.000000e-10f;
  if (int_num == 0)
    printf("---  (37-06) OK ---\n");
  else {
    printf("***  (37-06) NG ***\n");
    printf("INT_NUM = %d\n" , int_num);
  }
 
 
  double_ = -(double)1.1122334455667788e+75;
  if (double_ == -1.1122334455667788e+75)
    printf("---  (37-07) OK ---\n");
  else {
    printf("***  (37-07) NG ***\n");
    printf("DOUBLE_ = %e\n" , double_);
  }
 
 
  double_ = -(double)0.0;
  if (double_ == -0.0)
    printf("---  (37-08) OK ---\n");
  else {
    printf("***  (37-08) NG ***\n");
    printf("DOUBLE_ = %e\n" , double_);
  }
 
 
  double_ = -(double)2.4703282292062328e-78;
  if (double_ == -2.4703282292062328e-78)
    printf("---  (37-09) OK ---\n");
  else {
    printf("***  (37-09) NG ***\n");
    printf("DOUBLE_ = %e\n" , double_);
  }
 
 
  int_num = !(double)1.1122334455667788e+75;
  if (int_num == 0)
    printf("---  (37-10) OK ---\n");
  else {
    printf("***  (37-10) NG ***\n");
    printf("INT_NUM = %d\n" , int_num);
  }
 
 
  int_num = !(double)0.0;
  if (int_num == 1)
    printf("---  (37-11) OK ---\n");
  else {
    printf("***  (37-11) NG ***\n");
    printf("INT_NUM = %d\n" , int_num);
  }
 
 
  int_num = !(double)2.4703282292062328e-78;
  if (int_num == 0)
    printf("---  (37-12) OK ---\n");
  else {
    printf("***  (37-12 NG ***\n");
    printf("INT_NUM = %d\n" , int_num);
  }
 
 
  lon_dbl = -(long double)9.9999999999999999e+50l;
  if (lon_dbl == -9.9999999999999999e+50l)
    printf("---  (37-13) OK ---\n");
  else {
    printf("***  (37-13) NG ***\n");
    printf("LON_DBL = %e\n" , lon_dbl);
  }
 
 
  lon_dbl = -(long double)0.0l;
  if (lon_dbl == -0.0l)
    printf("---  (37-14) OK ---\n");
  else {
    printf("***  (37-14) NG ***\n");
    printf("LON_DBL = %e\n" , lon_dbl);
  }
 
 
  lon_dbl = -(long double)1.0000000000000000e-50l;
  if (lon_dbl == -1.0000000000000000e-50l)
    printf("---  (37-15) OK ---\n");
  else {
    printf("***  (37-15) NG ***\n");
    printf("LON_DBL = %e\n" , lon_dbl);
  }
 
 
  int_num = !(long double)9.9999999999999999e+60l;
  if (int_num == 0)
    printf("---  (37-16) OK ---\n");
  else {
    printf("***  (37-16) NG ***\n");
    printf("INT_NUM = %d\n" , int_num);
  }
 
 
  int_num = !(long double)0.0l;
  if (int_num == 1)
    printf("---  (37-17) OK ---\n");
  else {
    printf("***  (37-17) NG ***\n");
    printf("INT_NUM = %d\n" , int_num);
  }
 
 
  int_num = !(long double)1.0000000000000000e-70l;
  if (int_num == 0)
    printf("---  (37-18) OK ---\n");
  else {
    printf("***  (37-18 NG ***\n");
    printf("INT_NUM = %d\n" , int_num);
  }
 
 
  printf(" END  \n");
exit (0);
}
