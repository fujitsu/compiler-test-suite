
#include <math.h>
#include <float.h>
#include <stdio.h>

int main(void)
{
  double  zerof = 0.0;
  double zerod = 0.0;
  long double zerol = 0.0l;

  
  printf("isgreater for double\n");
  
  {
    double f = DBL_MIN;
    double r = DBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = DBL_MIN;
    double r = -1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = DBL_MIN;
    double r = -0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = DBL_MIN;
    double r = 0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = DBL_MIN;
    double r = 1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = DBL_MIN;
    double r = DBL_MAX;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = DBL_MIN;
    double f = DBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = DBL_MIN;
    double f = -1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = DBL_MIN;
    double f = -0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = DBL_MIN;
    double f = 0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = DBL_MIN;
    double f = 1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = DBL_MIN;
    double f = DBL_MAX;
    printf("%d\n",isgreater(f,r));
  }

  
  {
    double f = -1.0;
    double r = DBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = -1.0;
    double r = -1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = -1.0;
    double r = -0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = -1.0;
    double r = 0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = -1.0;
    double r = 1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = -1.0;
    double r = DBL_MAX;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = -1.0;
    double f = DBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = -1.0;
    double f = -1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = -1.0;
    double f = -0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = -1.0;
    double f = 0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = -1.0;
    double f = 1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = -1.0;
    double f = DBL_MAX;
    printf("%d\n",isgreater(f,r));
  }

  
  {
    double f = -0.0;
    double r = DBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = -0.0;
    double r = -1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = -0.0;
    double r = -0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = -0.0;
    double r = 0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = -0.0;
    double r = 1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = -0.0;
    double r = DBL_MAX;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = -0.0;
    double f = DBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = -0.0;
    double f = -1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = -0.0;
    double f = -0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = -0.0;
    double f = 0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = -0.0;
    double f = 1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = -0.0;
    double f = DBL_MAX;
    printf("%d\n",isgreater(f,r));
  }

  
  {
    double f = 0.0;
    double r = DBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = 0.0;
    double r = -1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = 0.0;
    double r = -0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = 0.0;
    double r = 0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = 0.0;
    double r = 1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = 0.0;
    double r = DBL_MAX;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = 0.0;
    double f = DBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = 0.0;
    double f = -1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = 0.0;
    double f = -0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = 0.0;
    double f = 0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = 0.0;
    double f = 1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = 0.0;
    double f = DBL_MAX;
    printf("%d\n",isgreater(f,r));
  }

  
  {
    double f = DBL_MAX;
    double r = DBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = DBL_MAX;
    double r = -1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = DBL_MAX;
    double r = -0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = DBL_MAX;
    double r = 0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = DBL_MAX;
    double r = 1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double f = DBL_MAX;
    double r = DBL_MAX;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = DBL_MAX;
    double f = DBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = DBL_MAX;
    double f = -1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = DBL_MAX;
    double f = -0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = DBL_MAX;
    double f = 0.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = DBL_MAX;
    double f = 1.0;
    printf("%d\n",isgreater(f,r));
  }
  {
    double r = DBL_MAX;
    double f = DBL_MAX;
    printf("%d\n",isgreater(f,r));
  }
  return 0;
}
