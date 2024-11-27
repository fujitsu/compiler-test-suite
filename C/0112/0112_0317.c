#include <stdio.h>
#include <complex.h>
int main()
{
  short base[10]={0,1,2,3,4,5,6,7,8,9};
  char  i1[10]={0,0,0,0,0,0,0,0,0,0};
  short i2[10]={0,0,0,0,0,0,0,0,0,0};
  int   i4[10]={0,0,0,0,0,0,0,0,0,0};
  long int i8[10]={0,0,0,0,0,0,0,0,0,0};
  unsigned char  u1[10]={0,0,0,0,0,0,0,0,0,0};
  unsigned short u2[10]={0,0,0,0,0,0,0,0,0,0};
  unsigned int   u4[10]={0,0,0,0,0,0,0,0,0,0};
  unsigned long int u8[10]={0,0,0,0,0,0,0,0,0,0};
  float  r4[10]={0,0,0,0,0,0,0,0,0,0};
  double r8[10]={0,0,0,0,0,0,0,0,0,0};
  long double r16[10]={0,0,0,0,0,0,0,0,0,0};
  float _Complex c8[10]={0,0,0,0,0,0,0,0,0,0};
  double _Complex c16[10]={0,0,0,0,0,0,0,0,0,0};
  long double _Complex c32[10]={0,0,0,0,0,0,0,0,0,0};

  struct str 
  {
    int  str01[10];
    int  str02[10];
  }str_t;

  union uni 
  {
    int  str01[10];
    int  str02[10];
  }uni_t;
  
  int i;

  for(i=0;i<10;i++) {
    str_t.str01[i] = 0;
    str_t.str02[i] = 0;
    uni_t.str01[i] = 0;
  }

  printf("\n i1 ");
  
#pragma clang loop unroll(disable)
  for(i=0;i<2;i++) {
    i1[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%d ",i1[i]);
  printf("\n i2 ");

  
#pragma clang loop unroll(disable)
  for(i=0;i<2;i++) {
    i2[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%d ",i2[i]);
  printf("\n i4 ");

  
#pragma clang loop unroll(disable)
  for(i=0;i<2;i++) {
    i4[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%d ",i4[i]);
  printf("\n i8 ");

  
#pragma clang loop unroll(disable)
  for(i=0;i<2;i++) {
    i8[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%Ld ",i8[i]);
  printf("\n u1 ");

  
#pragma clang loop unroll(disable)
  for(i=0;i<2;i++) {
    u1[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%u ",u1[i]);
  printf("\n u2 ");

  
#pragma clang loop unroll(disable)
  for(i=0;i<2;i++) {
    u2[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%u ",u2[i]);
  printf("\n u4 ");

  
#pragma clang loop unroll(disable)
  for(i=0;i<2;i++) {
    u4[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%u ",u4[i]);
  printf("\n u8 ");

  
#pragma clang loop unroll(disable)
  for(i=0;i<2;i++) {
    u8[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%Lu ",u8[i]);
  printf("\n r4 ");

  
#pragma clang loop unroll(disable)
  for(i=0;i<2;i++) {
    r4[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%g ",r4[i]);
  printf("\n r8 ");

  
#pragma clang loop unroll(disable)
  for(i=0;i<2;i++) {
    r8[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%g ",r8[i]);
  printf("\n r16 ");

  
#pragma clang loop unroll(disable)
  for(i=0;i<2;i++) {
    r16[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%Lg ",r16[i]);
  printf("\n c8  ");

  
#pragma clang loop unroll(disable)
  for(i=0;i<2;i++) {
    c8[i] = base[i];
  }
  for(i=0;i<10;i++) printf("(%g %g) ",crealf(c8[i]),cimagf(c8[i]));
  printf("\n c16 ");

  
#pragma clang loop unroll(disable)
  for(i=0;i<2;i++) {
    c16[i] = base[i];
  }
  for(i=0;i<10;i++) printf("(%g %g) ",creal(c16[i]),cimag(c16[i]));
  printf("\n c32 ");

  
#pragma clang loop unroll(disable)
  for(i=0;i<2;i++) {
    c32[i] = base[i];
  }
  for(i=0;i<10;i++) printf("(%Lg %Lg) ",creall(c32[i]),cimagl(c32[i]));
  printf("\n str ");

  
#pragma clang loop unroll(disable)
  for(i=0;i<2;i++) {
    str_t.str02[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%d ",str_t.str02[i]);
  printf("\n un  ");

  
#pragma clang loop unroll(disable)
  for(i=0;i<2;i++) {
    uni_t.str02[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%d ",uni_t.str01[i]);
  printf("\n ");
}
