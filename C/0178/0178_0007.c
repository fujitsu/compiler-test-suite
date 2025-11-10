#include <stdio.h>
#include <stddef.h>
#include <stdbool.h>


typedef union  UNI { int i; int ar0[0];
                     double d __attribute__((aligned(8))); } uni;
typedef struct STU { int i; int ar0[0]; double d; int ar[];} stu;
typedef enum cc {a1,a2,a3,a4} CC;

#define check_types_compatible_p(a,b,c) \
  if (cc++,a!=__builtin_types_compatible_p(b,c)) printf("NG %d\n",cc);
int main() {
  static int cc=0;
  unsigned int i;
  int j;
  _Complex double cpx;
  uni uni01;
  stu stu01;
  int *ip;
  float *fi;
  const int ci=4;
  volatile short vi=2;

  printf("Modifi type test \n");
  check_types_compatible_p(0,const int,typeof(vi));
  check_types_compatible_p(1,volatile int,typeof(ci));
  check_types_compatible_p(0,typeof(vi),typeof(ci));
  check_types_compatible_p(1,volatile int,const int);
  printf("Array type test \n");
  check_types_compatible_p(1,int , typeof(stu01.ar0[0]));
  check_types_compatible_p(1,typeof(uni01.ar0),typeof(stu01.ar0));
  check_types_compatible_p(1,int, typeof(stu01.ar[0]));
  check_types_compatible_p(0,int*, typeof(stu01.ar));
  printf("Deriv type test \n");
  check_types_compatible_p(1,CC,enum cc);
  check_types_compatible_p(1,int,typeof(a3));
  check_types_compatible_p(1,double,typeof(stu01.d));
  check_types_compatible_p(1,double,typeof(uni01.d));
  check_types_compatible_p(1,stu,typeof(stu01));
  check_types_compatible_p(1,uni,typeof(uni01));
  check_types_compatible_p(1,uni,union  UNI);
  check_types_compatible_p(1,stu,struct STU);
  printf("Basic type test \n");
  check_types_compatible_p(0,char  ,unsigned char );
  check_types_compatible_p(0,short ,unsigned short);
  check_types_compatible_p(0,int   ,unsigned int  );
  check_types_compatible_p(0,long  ,unsigned long );
  check_types_compatible_p(1,long  ,  signed long );
  check_types_compatible_p(1,long long ,long long int);
  check_types_compatible_p(0,double, float);
  check_types_compatible_p(0,double, long double);
  printf("pointer type test \n");
  check_types_compatible_p(0,int *, char *);
  check_types_compatible_p(1,int *, typeof(&j));
  check_types_compatible_p(1,float, typeof(*fi));
  printf("Complex type test \n");
  check_types_compatible_p(0,long double, _Complex double);
  check_types_compatible_p(1,typeof(cpx), _Complex double);

  printf("test end \n");
}
