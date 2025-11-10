#include<stdio.h>

struct TAG{
  int a;
  char b;
  float c;
};

int lto_sub_44(){
  int err_num = 0;

  static __thread char *pa;
  static __thread short *pb;
  static __thread int *pc;
  static __thread long *pd;
  static __thread long long *pe;
  static __thread float *pf;
  static __thread double *pg;
  static __thread long double *ph;
  static __thread struct TAG *pi;

  char a;
  short b;
  int c;
  long d;
  long long e;
  float f;
  double g;
  long double h;
  struct TAG i;

  pa = &a;
  pb = &b;
  pc = &c;
  pd = &d;
  pe = &e;
  pf = &f;
  pg = &g;
  ph = &h;
  pi = &i;

  a = '1';
  b = 2;
  c = 3;
  d = 4;
  e = 5;
  f = 6;
  g = 7;
  h = 8;
  i.a = 1;
  i.b = 2;
  i.c = 3;

  if( *pa != '1' ){
    printf("char NG a = %c \n",*pa);
    err_num++;
  }
  if( *pb != 2 ){
    printf("short NG b = %d \n",*pb);
    err_num++;
  }
  if( *pc != 3 ){
    printf("int NG c = %d \n",*pc);
    err_num++;
  }
  if( *pd != 4 ){
    printf("long NG d = %ld \n",*pd);
    err_num++;
  }
  if( *pe != 5 ){
    printf("long long NG e = %lld \n",*pe);
    err_num++;
  }
  if( *pf != 6 ){
    printf("float NG f = %f \n",*pf);
    err_num++;
  }
  if( *pg != 7 ){
    printf("double NG g = %f \n",*pg);
    err_num++;
  }
  if( *ph != 8 ){
    printf("long double NG h = %Lf \n",*ph);
    err_num++;
  }
  if( pi->a != 1 ){
    printf("struct 1 int NG h = %d \n",pi->a);
    err_num++;
  }
  if( pi->b != 2 ){
    printf("struct 2 char h = %d \n",pi->b);
    err_num++;
  }
  if( pi->c != 3 ){
    printf("struct 3 float h = %f \n",pi->c);
    err_num++;
  }
  
  if( err_num == 0 ){
    printf("OK\n");
  }
}
