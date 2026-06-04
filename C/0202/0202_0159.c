
#include<stdio.h>
#include<complex.h>

float _Complex f()
{
  float _Complex cf = 2.0;
  return cf;
}
struct s_cf {
  float _Complex  cf4 ;
} s_cf1;
int num = 2;
int main()
{
  float _Complex  cf  = 2.0;
  float _Complex  cf1 = 4.0;
  float _Complex  cf2 = 8.0;
  float _Complex *cf3;
  float _Complex  cf5[10]={4.0};
  struct s_cf *s_cf2;

  s_cf1.cf4 = 3.0;
  if (num || cf ) {
    printf(" OK 1\n");
    return 0;
  }
  if (num == 0 || cf != (float _Complex)0.0 ) {
    printf(" OK 1\n");
    return 0;
  }
  if (num != 0 || f() ) {
    printf(" OK 1\n");
    return 0;
  }
  if (num != 0 || cf ? cf1 : cf2 ) {
    printf(" OK 1\n");
    return 0;
  }

  if (num == 0 && cf + (float _Complex)0.0 ) {
    printf(" OK 1\n");
    return 0;
  }
  if (num == 0 &&  *cf3 ) {
    printf(" OK 1\n");
    return 0;
  }
  if (num != 0 && s_cf2->cf4 ) {
    printf(" OK 1\n");
    return 0;
  }
  if (num != 0 && s_cf1.cf4 ) {
    printf(" OK 1\n");
    return 0;
  }
  if (num != 0 && cf5[0] ) {
    printf(" OK 1\n");
    return 0;
  }
  if (num != 0 && ++cf3 ) {
    printf(" OK 1\n");
    return 0;
  }
  if (num != 0 && --cf3 ) {
    printf(" OK 1\n");
    return 0;
  }
  if (num != 0 && cf * cf2 ) {
    printf(" OK 1\n");
    return 0;
  }

  printf(" OK 2\n");
  return 0;
}
