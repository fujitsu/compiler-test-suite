#include <math.h>
#include <float.h>
#include <stdio.h>

int main(void)
{
  printf("isgreaterequal for long double\n");
  {
    long double f = LDBL_MIN;
    long double r = LDBL_MIN;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = LDBL_MIN;
    long double r = -1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = LDBL_MIN;
    long double r = -0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = LDBL_MIN;
    long double r = 0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = LDBL_MIN;
    long double r = 1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = LDBL_MIN;
    long double r = LDBL_MAX;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = LDBL_MIN;
    long double f = LDBL_MIN;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = LDBL_MIN;
    long double f = -1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = LDBL_MIN;
    long double f = -0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = LDBL_MIN;
    long double f = 0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = LDBL_MIN;
    long double f = 1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = LDBL_MIN;
    long double f = LDBL_MAX;
    printf("%d\n",isgreaterequal(f,r));
  }

  {
    long double f = -1.0l;
    long double r = LDBL_MIN;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = -1.0l;
    long double r = -1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = -1.0l;
    long double r = -0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = -1.0l;
    long double r = 0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = -1.0l;
    long double r = 1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = -1.0l;
    long double r = LDBL_MAX;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = -1.0l;
    long double f = LDBL_MIN;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = -1.0l;
    long double f = -1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = -1.0l;
    long double f = -0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = -1.0l;
    long double f = 0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = -1.0l;
    long double f = 1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = -1.0l;
    long double f = LDBL_MAX;
    printf("%d\n",isgreaterequal(f,r));
  }

  {
    long double f = -0.0l;
    long double r = LDBL_MIN;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = -0.0l;
    long double r = -1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = -0.0l;
    long double r = -0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = -0.0l;
    long double r = 0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = -0.0l;
    long double r = 1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = -0.0l;
    long double r = LDBL_MAX;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = -0.0l;
    long double f = LDBL_MIN;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = -0.0l;
    long double f = -1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = -0.0l;
    long double f = -0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = -0.0l;
    long double f = 0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = -0.0l;
    long double f = 1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = -0.0l;
    long double f = LDBL_MAX;
    printf("%d\n",isgreaterequal(f,r));
  }

  {
    long double f = 0.0l;
    long double r = LDBL_MIN;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = 0.0l;
    long double r = -1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = 0.0l;
    long double r = -0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = 0.0l;
    long double r = 0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = 0.0l;
    long double r = 1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = 0.0l;
    long double r = LDBL_MAX;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = 0.0l;
    long double f = LDBL_MIN;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = 0.0l;
    long double f = -1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = 0.0l;
    long double f = -0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = 0.0l;
    long double f = 0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = 0.0l;
    long double f = 1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = 0.0l;
    long double f = LDBL_MAX;
    printf("%d\n",isgreaterequal(f,r));
  }

  {
    long double f = LDBL_MAX;
    long double r = LDBL_MIN;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = LDBL_MAX;
    long double r = -1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = LDBL_MAX;
    long double r = -0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = LDBL_MAX;
    long double r = 0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = LDBL_MAX;
    long double r = 1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double f = LDBL_MAX;
    long double r = LDBL_MAX;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = LDBL_MAX;
    long double f = LDBL_MIN;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = LDBL_MAX;
    long double f = -1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = LDBL_MAX;
    long double f = -0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = LDBL_MAX;
    long double f = 0.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = LDBL_MAX;
    long double f = 1.0l;
    printf("%d\n",isgreaterequal(f,r));
  }
  {
    long double r = LDBL_MAX;
    long double f = LDBL_MAX;
    printf("%d\n",isgreaterequal(f,r));
  }
  return 0;
}
