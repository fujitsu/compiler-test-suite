#include<stdio.h>
 

int main()
{
  float  float_;
  int    int_;

  printf("12 START\n");

  float_ = (float)1.23e5 + (float)10.0;
  if (float_ == 1.2301e5f)
    printf("--- 12 (46-01) OK ---\n");
  else {
    printf("*** 12 (46-01) NG ***\n");
    printf("FLOAT_ = %e\n" , float_);
  }

  float_ = (float)100.0 - (float)50.0;
  if (float_ == 50.0f)
    printf("--- 12 (46-02) OK ---\n");
  else {
    printf("*** 12 (46-02) NG ***\n");
    printf("FLOAT_ = %e\n" , float_);
  }

  float_ = (float)1e5 * (float)1e5;
  if (float_ == 1e10f)
    printf("--- 12 (46-03) OK ---\n");
  else {
    printf("*** 12 (46-03) NG ***\n");
    printf("FLOAT_ = %e\n" , float_);
  }

  float_ = (float)1e5 / (float)5.0;
  if (float_ == 2e4f)
    printf("--- 12 (46-04) OK ---\n");
  else {
    printf("*** 12 (46-04) NG ***\n");
    printf("FLOAT_ = %e\n" , float_);
  }

  int_ = (float)100.0 < (float)101.0;
  if (int_ == 1)
    printf("--- 12 (46-05) OK ---\n");
  else {
    printf("*** 12 (46-05) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (float)10.0 > (float)50.0;
  if (int_ == 0)
    printf("--- 12 (46-06) OK ---\n");
  else {
    printf("*** 12 (46-06) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (float)100.0 <= (float)100.0001;
  if (int_ == 1)
    printf("--- 12 (46-07) OK ---\n");
  else {
    printf("*** 12 (46-07) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (float)10.0001 >= (float)50.0;
  if (int_ == 0)
    printf("--- 12 (46-08) OK ---\n");
  else {
    printf("*** 12 (46-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (float)100.0 == (float)100.0;
  if (int_ == 1)
    printf("--- 12 (46-09) OK ---\n");
  else {
    printf("*** 12 (46-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (float)1.0 != (float)1.00001;
  if (int_ == 1)
    printf("--- 12 (46-10) OK ---\n");
  else {
    printf("*** 12 (46-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (float)100.0 && (float)0.0;
  if (int_ == 0)
    printf("--- 12 (46-11) OK ---\n");
  else {
    printf("*** 12 (46-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  int_ = (float)0.0 || (float)100.0;
  if (int_ == 1)
    printf("--- 12 (46-12) OK ---\n");
  else {
    printf("*** 12 (46-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

  printf("12 END  \n");
}
