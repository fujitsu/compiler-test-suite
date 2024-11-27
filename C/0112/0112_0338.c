#include <stdio.h>
#include <complex.h>
int main()
{
  unsigned short base[10]={0,1,2,3,4,5,6,7,8,9};
  char  i1[10];
  short i2[10];
  int   i4[10];
  long int i8[10];
  unsigned char  u1[10];
  unsigned short u2[10];
  unsigned int   u4[10];
  unsigned long int u8[10];
  float  r4[10];
  double r8[10];
  long double r16[10];
  float _Complex c8[10];
  double _Complex c16[10];
  long double _Complex c32[10];

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

  printf("\n i1 ");
  
  for(i=0;i<10;i++) {
    i1[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%d ",i1[i]);
  printf("\n i2 ");

  
  for(i=0;i<10;i++) {
    i2[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%d ",i2[i]);
  printf("\n i4 ");

  
  for(i=0;i<10;i++) {
    i4[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%d ",i4[i]);
  printf("\n i8 ");

  
  for(i=0;i<10;i++) {
    i8[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%Ld ",i8[i]);
  printf("\n u1 ");

  
  for(i=0;i<10;i++) {
    u1[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%u ",u1[i]);
  printf("\n u2 ");

  
  for(i=0;i<10;i++) {
    u2[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%u ",u2[i]);
  printf("\n u4 ");

  
  for(i=0;i<10;i++) {
    u4[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%u ",u4[i]);
  printf("\n u8 ");

  
  for(i=0;i<10;i++) {
    u8[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%Lu ",u8[i]);
  printf("\n r4 ");

  
  for(i=0;i<10;i++) {
    r4[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%g ",r4[i]);
  printf("\n r8 ");

  
  for(i=0;i<10;i++) {
    r8[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%g ",r8[i]);
  printf("\n r16 ");

  
  for(i=0;i<10;i++) {
    r16[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%Lg ",r16[i]);
  printf("\n c8  ");

  
  for(i=0;i<10;i++) {
    c8[i] = base[i];
  }
  for(i=0;i<10;i++) printf("(%g %g) ",crealf(c8[i]),cimagf(c8[i]));
  printf("\n c16 ");

  
  for(i=0;i<10;i++) {
    c16[i] = base[i];
  }
  for(i=0;i<10;i++) printf("(%g %g) ",creal(c16[i]),cimag(c16[i]));
  printf("\n c32 ");

  
  for(i=0;i<10;i++) {
    c32[i] = base[i];
  }
  for(i=0;i<10;i++) printf("(%Lg %Lg) ",creall(c32[i]),cimagl(c32[i]));
  printf("\n str ");

  
  for(i=0;i<10;i++) {
    str_t.str02[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%d ",str_t.str02[i]);
  printf("\n un  ");

  
  for(i=0;i<10;i++) {
    uni_t.str02[i] = base[i];
  }
  for(i=0;i<10;i++) printf("%d ",uni_t.str01[i]);
  printf("\n ");
}
