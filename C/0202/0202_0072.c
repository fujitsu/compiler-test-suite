#include <stdio.h>

#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#include <complex.h>
#endif 

struct SS {
     int   s1;
     float s2;
};
union  UU {
     int   u1;
     float u2;
};

#if defined(__STDC_VERSION__) && __STDC_VERSION__ < 199901L
#define II 10 
#else 
int II = 10;
#endif 

int *vla[10];

void func()
{
  int i;
{
  char           i1[II];
  short          i2[II];
  int            i4[II];
  long           i8[II];
  unsigned char  u1[II];
  unsigned short u2[II];
  unsigned int   u4[II];
  unsigned long  u8[II];
  float          f4[II];
  double         f8[II];
  long double   f16[II];
#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
  _Complex float       c8[II];
  _Complex double      c16[II];
  _Complex long double c32[II];
  _Bool          b1[II];
#endif 
  struct SS      ss[II];
  union  UU      uu[II];

  vla[0] = (int *)i1;

  i1[0] = i2[0] = i4[0] = i8[0] = u1[0] = u2[0] = u4[0] = u8[0] = 1;
  f4[0] = f8[0] = f16[0] = 1;
#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
  c8[0] = c16[0] = c32[0] = 1.0 + 0.0i;
  b1[0] = 1;
#endif 
  ss[0].s1 = 1;
  uu[0].u1 = 1;

  printf("  %d  %d  %d  %d  %d  %d  %d  %d  %f  %g  %Lg \n",
            i1[0], i2[0], i4[0], i8[0], u1[0], u2[0], u4[0], u8[0], f4[0], f8[0], f16[0]);
#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
  printf("  %f  %f  %g  %g  %Lg  %Lg  \n",
           crealf( c8[0]),  cimagf( c8[0]),
           creal( c16[0]),  cimag( c16[0]),
           creall( c32[0]), cimagl( c32[0]));
  printf("  %d  \n", b1[0]);
#else 
  printf("  %f  %f  %g  %g  %g  %g  \n",1.0,0.0,1.0,0.0,1.0,0.0);
  printf("  %d  \n",1);
#endif 
  printf("  %d  %d  \n",ss[0].s1, uu[0].u1);
}

i = 1;
{
#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
  long           array_l[i];

  vla[1] = (int *)array_l;

  printf(" %d \n",sizeof(array_l));
#else  
  printf(" %d \n",i*8);
#endif 
}

i = 100;
{
  char           i1[II];
#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
  long array_l[i];

  vla[2] = (int *)i1;

  printf(" %d \n",sizeof(array_l));
#else  
  printf(" %d \n",i*8);
#endif 
}

i = 10000;
{
  char           i1[II];
#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
  long array_l[i];

  vla[3] = (int *)i1;

  printf(" %d \n",sizeof(array_l));
#else  
  printf(" %d \n",i*8);
#endif 
}

{
  char        i1[II];
  vla[4] = (int *)i1;
  printf(" %d \n",sizeof(i1));
}
{
  char      i1[II];
  int array_l1[II];
  vla[5] = (int *)i1;
  printf(" %d \n",sizeof(i1));
  printf(" %d \n",sizeof(array_l1));
}
{
  char array_l1[II];
  long array_l2[II];
  char array_l3[II];
  vla[6] = (int *)array_l1;
  printf(" %d \n",sizeof(array_l1));
  printf(" %d \n",sizeof(array_l2));
  printf(" %d \n",sizeof(array_l3));
}
{
  int array_l1[II];
  long array_l2[II];
  float array_l3[II];
  double array_l4[II];
  vla[7] = (int *)array_l1;
  printf(" %d \n",sizeof(array_l1));
  printf(" %d \n",sizeof(array_l2));
  printf(" %d \n",sizeof(array_l3));
  printf(" %d \n",sizeof(array_l4));
}
}

int main()
{
  func();

#if CFE
#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
  if (vla[0] == vla[1] && vla[1] == vla[2] && vla[2] == vla[3] && vla[3] == vla[4] && vla[4] == vla[5]) {
    printf("OK\n");
  } else {
    printf(" 0:%x\n 1:%x\n 2:%x\n 3:%x\n 4:%x\n 5:%x\n 6:%x\n 7:%x\n",
            vla[0],vla[1],vla[2],vla[3],vla[4],vla[5],vla[6],vla[7]);
    printf("NG\n");
  }
#else  
  printf("OK\n");
#endif 
#else
  printf("OK\n");
#endif

  return 0;
}
