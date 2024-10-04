
#include <math.h>
#include <float.h>
#include <stdio.h>

int main(void)
{
  float  zerof = 0.0f;
  double zerod = 0.0;
  long double zerol = 0.0l;

  
  printf("isgreater for float\n");
  
  {
    float f = FLT_MIN;
    float r = FLT_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = FLT_MIN;
    float r = -1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = FLT_MIN;
    float r = -0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = FLT_MIN;
    float r = 0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = FLT_MIN;
    float r = 1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = FLT_MIN;
    float r = FLT_MAX;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = FLT_MIN;
    float f = FLT_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = FLT_MIN;
    float f = -1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = FLT_MIN;
    float f = -0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = FLT_MIN;
    float f = 0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = FLT_MIN;
    float f = 1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = FLT_MIN;
    float f = FLT_MAX;
    printf("%d\n",isgreater(f,r));
  }

  
  {
    float f = -1.0f;
    float r = FLT_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = -1.0f;
    float r = -1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = -1.0f;
    float r = -0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = -1.0f;
    float r = 0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = -1.0f;
    float r = 1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = -1.0f;
    float r = FLT_MAX;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = -1.0f;
    float f = FLT_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = -1.0f;
    float f = -1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = -1.0f;
    float f = -0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = -1.0f;
    float f = 0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = -1.0f;
    float f = 1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = -1.0f;
    float f = FLT_MAX;
    printf("%d\n",isgreater(f,r));
  }

  
  {
    float f = -0.0f;
    float r = FLT_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = -0.0f;
    float r = -1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = -0.0f;
    float r = -0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = -0.0f;
    float r = 0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = -0.0f;
    float r = 1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = -0.0f;
    float r = FLT_MAX;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = -0.0f;
    float f = FLT_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = -0.0f;
    float f = -1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = -0.0f;
    float f = -0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = -0.0f;
    float f = 0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = -0.0f;
    float f = 1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = -0.0f;
    float f = FLT_MAX;
    printf("%d\n",isgreater(f,r));
  }

  
  {
    float f = 0.0f;
    float r = FLT_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = 0.0f;
    float r = -1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = 0.0f;
    float r = -0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = 0.0f;
    float r = 0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = 0.0f;
    float r = 1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = 0.0f;
    float r = FLT_MAX;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = 0.0f;
    float f = FLT_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = 0.0f;
    float f = -1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = 0.0f;
    float f = -0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = 0.0f;
    float f = 0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = 0.0f;
    float f = 1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = 0.0f;
    float f = FLT_MAX;
    printf("%d\n",isgreater(f,r));
  }

  
  {
    float f = FLT_MAX;
    float r = FLT_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = FLT_MAX;
    float r = -1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = FLT_MAX;
    float r = -0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = FLT_MAX;
    float r = 0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = FLT_MAX;
    float r = 1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float f = FLT_MAX;
    float r = FLT_MAX;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = FLT_MAX;
    float f = FLT_MIN;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = FLT_MAX;
    float f = -1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = FLT_MAX;
    float f = -0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = FLT_MAX;
    float f = 0.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = FLT_MAX;
    float f = 1.0f;
    printf("%d\n",isgreater(f,r));
  }
  {
    float r = FLT_MAX;
    float f = FLT_MAX;
    printf("%d\n",isgreater(f,r));
  }
  return 0;
}
