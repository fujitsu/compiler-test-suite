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

int ii;


void func_type()
{
  ii=0;
  while (ii<10) {
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

    
    vla[ii] = (int *)i1;

    i1[0] = i2[0] = i4[0] = i8[0] = u1[0] = u2[0] = u4[0] = u8[0] = 1;
    f4[0] = f8[0] = f16[0] = 1;
#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
    c8[0] = c16[0] = c32[0] = 1.0+0.0i;
    b1[0] = 1;
#endif 
    ss[0].s1 = 1;
    uu[0].u1 = 1;

    if (ii == 9) {
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
    ii++;
  }
  
  
#if CFE 
  ii=0;
  while (ii<9) {
    if (vla[ii] != vla[ii+1]) {
      printf("NG" );
      printf("(%d)%x (%d)%x ",ii,vla[ii],ii+1,vla[ii+1]);
#if TEST
    } else {
      printf("OK\n");
#endif 
    }
    ii++;
  }
#endif 

  return;
}

void func_size(int i)
{
  ii=0;
  while (ii<10) {
    long array_l[II];
    
    vla[ii] = (int *)array_l;

    if (ii == 9) {
      printf(" %d \n",sizeof(array_l));
    }
    ii++;
  }

  
#if CFE 
  ii=0;
  while (ii<9) {
    if (vla[ii] != vla[ii+1]) {
      printf("NG" );
      printf("(%d)%x (%d)%x ",ii,vla[ii],ii+1,vla[ii+1]);
#if TEST
    } else {
      printf("OK\n");
#endif 
    }
    ii++;
  }
#endif 

}

void func_number1()
{
  ii=0;
  while (ii<10) {
    short array_l1[II];
    
    vla[ii] = (int *)array_l1;

    if (ii == 9) {
      printf(" %d \n",sizeof(array_l1));
    }
    ii++;
  }

  
#if CFE 
  ii=0;
  while (ii<9) {
    if (vla[ii] != vla[ii+1]) {
      printf("NG" );
      printf("(%d)%x (%d)%x ",ii,vla[ii],ii+1,vla[ii+1]);
#if TEST
    } else {
      printf("OK\n");
#endif 
    }
    ii++;
  }
#endif 

}
void func_number2()
{
  ii=0;
  while (ii<10) {
    int array_l1[II];
    int array_l2[II];
    
    vla[ii] = (int *)array_l1;

    if (ii == 9) {
      printf(" %d \n",sizeof(array_l1));
      printf(" %d \n",sizeof(array_l2));
    }
    ii++;
  }

  
#if CFE 
  ii=0;
  while (ii<9) {
    if (vla[ii] != vla[ii+1]) {
      printf("NG" );
      printf("(%d)%x (%d)%x ",ii,vla[ii],ii+1,vla[ii+1]);
#if TEST
    } else {
      printf("OK\n");
#endif 
    }
    ii++;
  }
#endif 

}
void func_number3()
{
  ii=0;
  while (ii<10) {
    char array_l1[II];
    long array_l2[II];
    char array_l3[II];
    
    vla[ii] = (int *)array_l1;

    if (ii == 9) {
      printf(" %d \n",sizeof(array_l1));
      printf(" %d \n",sizeof(array_l2));
      printf(" %d \n",sizeof(array_l3));
    }
    ii++;
  }

  
#if CFE 
  ii=0;
  while (ii<9) {
    if (vla[ii] != vla[ii+1]) {
      printf("NG" );
      printf("(%d)%x (%d)%x ",ii,vla[ii],ii+1,vla[ii+1]);
#if TEST
    } else {
      printf("OK\n");
#endif 
    }
    ii++;
  }
#endif 

}
void func_number4()
{
  ii=0;
  while (ii<10) {
    int array_l1[II];
    long array_l2[II];
    float array_l3[II];
    double array_l4[II];
    
    vla[ii] = (int *)array_l1;

    if (ii == 9) {
      printf(" %d \n",sizeof(array_l1));
      printf(" %d \n",sizeof(array_l2));
      printf(" %d \n",sizeof(array_l3));
      printf(" %d \n",sizeof(array_l4));
    }
    ii++;
  }

  
#if CFE 
  ii=0;
  while (ii<9) {
    if (vla[ii] != vla[ii+1]) {
      printf("NG" );
      printf("(%d)%x (%d)%x ",ii,vla[ii],ii+1,vla[ii+1]);
#if TEST
    } else {
      printf("OK\n");
#endif 
    }
    ii++;
  }
#endif 

}

int main()
{
  
  func_type();

  func_size(1);
  func_size(100);
  func_size(10000);

  func_number1();
  func_number2();
  func_number3();
  func_number4();

  return 0;
}
