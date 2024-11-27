#include <stdio.h>
#include <math.h>



int inline_pow00(float x);
int inline_pow0(float x);
int inline_pow05(float x);
int inline_pow10(float x);
int inline_pow1(float x);
int inline_pow15(float x);
int inline_pow20(float x);
int inline_pow2(float x);
int inline_pow25(float x);
int inline_pow30(float x);
int inline_pow3(float x);
int inline_pow35(float x);
int inline_pow40(float x);
int inline_pow4(float x);
int inline_pow45(float x);
int inline_pow50(float x);
int inline_pow5(float x);
int inline_pow55(float x);
int inline_pow60(float x);
int inline_pow6(float x);
int inline_pow65(float x);
int inline_pow70(float x);
int inline_pow7(float x);
int inline_pow75(float x);
int inline_pow80(float x);
int inline_pow8(float x);
int inline_pow85(float x);
int inline_pow90(float x);
int inline_pow9(float x);
int inline_pow95(float x);
int inline_powB10(float x);
int inline_powB10T0(float x);


int main(void) 
{
  float x;
  int i, ng = 0;
  for (x = 0.5f; x <= 2.0f; x+=0.04f) {
    i = 0;
    i += inline_pow00(x);
    i += inline_pow0(x);
    i += inline_pow05(x);
    i += inline_pow10(x);
    i += inline_pow1(x);
    i += inline_pow15(x);
    i += inline_pow20(x);
    i += inline_pow2(x);
    i += inline_pow25(x);
    i += inline_pow30(x);
    i += inline_pow3(x);
    i += inline_pow35(x);
    i += inline_pow40(x);
    i += inline_pow4(x);
    i += inline_pow45(x);
    i += inline_pow50(x);
    i += inline_pow5(x);
    i += inline_pow55(x);
    i += inline_pow60(x);
    i += inline_pow6(x);
    i += inline_pow65(x);
    i += inline_pow70(x);
    i += inline_pow7(x);
    i += inline_pow75(x);
    i += inline_pow80(x);
    i += inline_pow8(x);
    i += inline_pow85(x);
    i += inline_pow90(x);
    i += inline_pow9(x);
    i += inline_pow95(x);
    i += inline_powB10(x);
    i += inline_powB10T0(x);
    if (i!=32) ng += 1;
  }
  if (ng == 0) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}

#define compare(x,y) (((int)((x)*100.0)) == ((int)((y)*100.0)))

int inline_pow00(float x)
{
  if (compare(1.0, pow(x,0.0))) {
    return 1;
  } else {
    printf("ng pow00\n"); return 0;
  }
}

int inline_pow0(float x)
{
  if (compare(1.0, pow(x,0))) {
    return 1;
  } else {
    printf("ng pow0\n"); return 0;
  }
}

int inline_pow05(float x)
{
  if (compare(sqrt(x), pow(x,0.5))) {
    return 1;
  } else {
    printf("ng pow05\n"); return 0;
  }
}

int inline_pow10(float x)
{
  if (compare(x, pow(x,1.0))) {
    return 1;
  } else {
    printf("ng pow10\n"); return 0;
  }
}

int inline_pow1(float x)
{
  if (compare(x, pow(x,1))) {
    return 1;
  } else {
    printf("ng pow1\n"); return 0;
  }
}

int inline_pow15(float x)
{
  if (compare(x*sqrt(x), pow(x,1.5))) {
    return 1;
  } else {
    printf("ng pow15\n"); return 0;
  }
}

int inline_pow20(float x)
{
  if (compare(x*x, pow(x,2.0))) {
    return 1;
  } else {
    printf("ng pow20\n"); return 0;
  }
}

int inline_pow2(float x) 
{
  if (compare(x*x, pow(x,2))) {
    return 1;
  } else {
    printf("ng pow2\n"); return 0;
  }
}

int inline_pow25(float x)
{
  if (compare((x*x)*sqrt(x), pow(x,2.5))) {
    return 1;
  } else {
    printf("ng pow25\n"); return 0;
  }
}

int inline_pow30(float x)
{
  if (compare((x*x)*x, pow(x,3.0))) {
    return 1;
  } else {
    printf("ng pow30\n"); return 0;
  }
}

int inline_pow3(float x) 
{
  if (compare((x*x)*x, pow(x,3))) {
    return 1;
  } else {
    printf("ng pow3\n"); return 0;
  }
}

int inline_pow35(float x)
{
  if (compare(((x*x)*x)*sqrt(x), pow(x,3.5))) {
    return 1;
  } else {
    printf("ng pow35\n"); return 0;
  }
}

int inline_pow40(float x)
{
  if (compare(((x*x)*(x*x)), pow(x,4.0))) {
    return 1;
  } else {
    printf("ng pow40\n"); return 0;
  }
}

int inline_pow4(float x) 
{
  if (compare(((x*x)*(x*x)), pow(x,4))) {
    return 1;
  } else {
    printf("ng pow4\n"); return 0;
  }
}

int inline_pow45(float x)
{
  if (compare(((x*x)*(x*x))*sqrt(x), pow(x,4.5))) {
    return 1;
  } else {
    printf("ng pow45\n"); return 0;
  }
}

int inline_pow50(float x)
{
  if (compare(((x*x)*(x*x))*x, pow(x,5.0))) {
    return 1;
  } else {
    printf("ng pow50\n"); return 0;
  }
}

int inline_pow5(float x) 
{
  if (compare(((x*x)*(x*x))*x, pow(x,5))) {
    return 1;
  } else {
    printf("ng pow5\n"); return 0;
  }
}

int inline_pow55(float x)
{
  if (compare((((x*x)*x)*(x*x))*sqrt(x), pow(x,5.5))) {
    return 1;
  } else {
    printf("ng pow55\n"); return 0;
  }
}

int inline_pow60(float x)
{
  if (compare((((x*x)*x)*((x*x)*x)), pow(x,6.0))) {
    return 1;
  } else {
    printf("ng pow60\n"); return 0;
  }
}

int inline_pow6(float x) 
{
  if (compare((((x*x)*x)*((x*x)*x)), pow(x,6))) {
    return 1;
  } else {
    printf("ng pow6\n"); return 0;
  }
}

int inline_pow65(float x)
{
  if (compare((((x*x)*x)*((x*x)*x))*sqrt(x), pow(x,6.5))) {
    return 1;
  } else {
    printf("ng pow65\n"); return 0;
  }
}

int inline_pow70(float x)
{
  if (compare((((x*x)*(x*x))*((x*x)*x)), pow(x,7.0))) {
    return 1;
  } else {
    printf("ng pow70\n"); return 0;
  }
}

int inline_pow7(float x) 
{
  if (compare((((x*x)*(x*x))*((x*x)*x)), pow(x,7))) {
    return 1;
  } else {
    printf("ng pow7\n"); return 0;
  }
}

int inline_pow75(float x)
{
  if (compare((((x*x)*(x*x))*((x*x)*x))*sqrt(x), pow(x,7.5))) {
    return 1;
  } else {
    printf("ng pow75\n"); return 0;
  }
}

int inline_pow80(float x)
{
  if (compare((((x*x)*(x*x))*((x*x)*(x*x))), pow(x,8.0))) {
    return 1;
  } else {
    printf("ng pow80\n"); return 0;
  }
}

int inline_pow8(float x) 
{
  if (compare((((x*x)*(x*x))*((x*x)*(x*x))), pow(x,8))) {
    return 1;
  } else {
    printf("ng pow8\n"); return 0;
  }
}

int inline_pow85(float x)
{
  if (compare((((x*x)*(x*x))*((x*x)*(x*x)))*sqrt(x), pow(x,8.5))) {
    return 1;
  } else {
    printf("ng pow85\n"); return 0;
  }
}

int inline_pow90(float x)
{
  if (compare(((((x*x)*(x*x))*x)*((x*x)*(x*x))), pow(x,9.0))) {
    return 1;
  } else {
    printf("ng pow90\n"); return 0;
  }
}

int inline_pow9(float x) 
{
  if (compare(((((x*x)*((x*x)*x)))*((x*x)*(x*x))), pow(x,9))) {
    return 1;
  } else {
    printf("ng pow9\n"); return 0;
  }
}

int inline_pow95(float x)
{
  if (compare(((((x*x)*((x*x)*x)))*((x*x)*(x*x)))*sqrt(x), pow(x,9.5))) {
    return 1;
  } else {
    printf("ng pow95\n"); return 0;
  }
}

int inline_powB10T0(float x)
{
  if (compare(((((x*x)*((x*x)*x)))*((x*x)*((x*x)*x))), pow(x,10.0))) {
    return 1;
  } else {
    printf("ng powB10T0\n"); return 0;
  }
}

int inline_powB10(float x)
{
  if (compare(((((x*x)*((x*x)*x)))*((x*x)*((x*x)*x))), pow(x,10))) {
    return 1;
  } else {
    printf("ng powB10\n"); return 0;
  }
}
