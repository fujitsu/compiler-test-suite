
#include <math.h>
#include <float.h>
#include <stdio.h>

int main(void)
{
  long double  zerof = 0.0;
  long double zerod = 0.0;
  long double zerol = 0.0l;

  
  printf("isgreater for long double\n");
  
  {
    long double f = LDBL_MIN;
    long double r = LDBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = LDBL_MIN;
    long double r = -1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = LDBL_MIN;
    long double r = -0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = LDBL_MIN;
    long double r = 0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = LDBL_MIN;
    long double r = 1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = LDBL_MIN;
    long double r = LDBL_MAX;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = LDBL_MIN;
    long double f = LDBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = LDBL_MIN;
    long double f = -1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = LDBL_MIN;
    long double f = -0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = LDBL_MIN;
    long double f = 0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = LDBL_MIN;
    long double f = 1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = LDBL_MIN;
    long double f = LDBL_MAX;
    printf("%d\n",isgreater(f,r));
  }

  
  {
    long double f = -1.0l;
    long double r = LDBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = -1.0l;
    long double r = -1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = -1.0l;
    long double r = -0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = -1.0l;
    long double r = 0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = -1.0l;
    long double r = 1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = -1.0l;
    long double r = LDBL_MAX;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = -1.0l;
    long double f = LDBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = -1.0l;
    long double f = -1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = -1.0l;
    long double f = -0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = -1.0l;
    long double f = 0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = -1.0l;
    long double f = 1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = -1.0l;
    long double f = LDBL_MAX;
    printf("%d\n",isgreater(f,r));
  }

  
  {
    long double f = -0.0l;
    long double r = LDBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = -0.0l;
    long double r = -1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = -0.0l;
    long double r = -0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = -0.0l;
    long double r = 0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = -0.0l;
    long double r = 1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = -0.0l;
    long double r = LDBL_MAX;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = -0.0l;
    long double f = LDBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = -0.0l;
    long double f = -1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = -0.0l;
    long double f = -0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = -0.0l;
    long double f = 0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = -0.0l;
    long double f = 1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = -0.0l;
    long double f = LDBL_MAX;
    printf("%d\n",isgreater(f,r));
  }

  
  {
    long double f = 0.0l;
    long double r = LDBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = 0.0l;
    long double r = -1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = 0.0l;
    long double r = -0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = 0.0l;
    long double r = 0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = 0.0l;
    long double r = 1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = 0.0l;
    long double r = LDBL_MAX;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = 0.0l;
    long double f = LDBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = 0.0l;
    long double f = -1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = 0.0l;
    long double f = -0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = 0.0l;
    long double f = 0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = 0.0l;
    long double f = 1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = 0.0l;
    long double f = LDBL_MAX;
    printf("%d\n",isgreater(f,r));
  }

  
  {
    long double f = LDBL_MAX;
    long double r = LDBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = LDBL_MAX;
    long double r = -1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = LDBL_MAX;
    long double r = -0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = LDBL_MAX;
    long double r = 0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = LDBL_MAX;
    long double r = 1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double f = LDBL_MAX;
    long double r = LDBL_MAX;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = LDBL_MAX;
    long double f = LDBL_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = LDBL_MAX;
    long double f = -1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = LDBL_MAX;
    long double f = -0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = LDBL_MAX;
    long double f = 0.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = LDBL_MAX;
    long double f = 1.0l;
    printf("%d\n",isgreater(f,r));
  }
  {
    long double r = LDBL_MAX;
    long double f = LDBL_MAX;
    printf("%d\n",isgreater(f,r));
  }
  return 0;
}
