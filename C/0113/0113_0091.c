#include <stdio.h>


#include <math.h>
#include <float.h>
#define FC 0.0F
#define FS 0.0F
#define DC 0.0
#define DS 0.0
#define FO (float)1.1
#define FNaN ((float)pow(2.0, 255.0) * 1.1F)
#define DNaN ((float)pow(2.0, 255.0) * 1.1)
#define ANS 69


#if !defined(DBL_MAX)
#define DBL_MAX         1.7976931348623157E+308
#define DBL_MIN         2.2250738585072014E-308
#define FLT_MAX         3.402823466E+38F
#define FLT_MIN         1.175494351E-38F
#endif
int main()
{
  float  f1=0.0F;
  float  f2=0.0F;
  float  f3=1.1F;
  float  f4=FLT_MAX;
  float  f5=FLT_MIN;
  float  f6=FLT_MAX/((float)1.0/FLT_MAX);
  float  f7=DBL_MAX;
  float  f8=DBL_MIN;
  double d1=0.0;
  double d2=0.0;
  double d3=DBL_MAX;
  double d4=DBL_MIN;
  double d5=DBL_MAX/(1.0/DBL_MAX);
  double d6=FLT_MAX;
  double d7=FLT_MIN;
  int    ok = 0;

  
  if (f1 == f2)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (f1 == (float)d1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if ((double)f1 == d1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if ((float)d1 == f1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (d1 == (double)f1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (f1 == FC)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (f1 == 0.0F)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (FC == f1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (0.0F == f1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (f1 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (0.0 == f1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (f3 != 1.1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (1.1 != f3)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (FC == FS)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (FC == 0.0)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (FC == (float)DC)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if ((double)FC == DC)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if ((float)DC == FC)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (DC == (double)FC)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (d1 == d2)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (d1 == DC)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (d1 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (DC == d1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (0.0 == d1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (DC == DS)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (DC == 0.0)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (0.0 == 0.0)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (f1 != FLT_MAX/(1.0/FLT_MAX))
    ok += 1;
  else
    printf("NG : %d\n");    

  
  if (f6 != 0.0)
    ok += 1;
  else
    printf("NG : %d\n");    

  
  if (f1 != FLT_MAX/(1.0/FLT_MAX))
    ok += 1;
  else
    printf("NG : %d\n");    

  
  if (0.0 != f6)
    ok += 1;
  else
    printf("NG : %d\n");    

  
  if (f1 != FNaN)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (FNaN != f1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (f1 <= FLT_MAX)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (f3 != FLT_MAX)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (f3 != 3.402823466E+38F)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (FLT_MAX >= f1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (FLT_MAX != f3)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (3.402823466E+38F != f3)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (f1 <= FLT_MIN)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (f4 != FLT_MIN)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (FLT_MIN >= f1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (FLT_MIN != f4)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (f1 <= DBL_MAX)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (f1 <= 1.189731495357231765085759326628007016E+4932L)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (f7 != DBL_MAX)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (DBL_MAX >= f1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (1.189731495357231765085759326628007016E+4932L >= f1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (DBL_MAX != f7)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (f1 <= DBL_MIN)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (3.362103143112093506262677817321752603E-4932L >= f1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (f8 != DBL_MIN)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (DBL_MIN >= f1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (3.362103143112093506262677817321752603E-4932L >= f1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (DBL_MIN != f8)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (d1 != DBL_MAX/(1.0/DBL_MAX))
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (d5 != 0.0)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (DBL_MAX/(1.0/DBL_MAX) != d1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (0.0 != d5)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (d1 != DNaN)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (DNaN != d1)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (d6 == FLT_MAX)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (FLT_MAX == d6)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (d7 == FLT_MIN)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (FLT_MIN == d7)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (d3 == DBL_MAX)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (DBL_MAX == d3)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (DBL_MIN == d4)
    ok += 1;
  else
    printf("NG : %d\n");

  
  if (d4 == DBL_MIN)
    ok += 1;
  else
    printf("NG : %d\n");

  if (ok == ANS)
    printf("OK\n");
}
