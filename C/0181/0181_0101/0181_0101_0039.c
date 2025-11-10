#include<stdio.h>

struct TAG{
  int a;
  char b;
  float c;
};

static __thread char a[2] = { '1', '1' };
static __thread short b[3] = { 2, 2, 2 };
static __thread int c[4] = { 3, 3, 3, 3 };
static __thread long d[5] = { 4, 4, 4, 4, 4};
static __thread long long e[6] = { 5, 5, 5, 5, 5, 5};
static __thread float f[7] = {6, 6, 6, 6, 6, 6, 6};
static __thread double g[8] = {7, 7, 7, 7, 7, 7, 7, 7};
static __thread long double h[9] = { 8, 8, 8, 8, 8, 8, 8, 8, 8 };
static __thread struct TAG i[10] = { {1,2,3},{1,2,3},{1,2,3},{1,2,3},{1,2,3},{1,2,3},{1,2,3},{1,2,3},{1,2,3},{1,2,3} };

static
void foo(int aa, int bb, int cc, int dd, int ee, int ff, int gg, int hh, int ii){
  int err_num = 0;

  if( a[aa] != '1' ){
    printf("char NG a = %c \n",a);
    err_num++;
  }
  if( b[bb] != 2 ){
    printf("short NG b = %d \n",b);
    err_num++;
  }
  if( c[cc] != 3 ){
    printf("int NG c = %d \n",c);
    err_num++;
  }
  if( d[dd] != 4 ){
    printf("long NG d = %ld \n",d);
    err_num++;
  }
  if( e[ee] != 5 ){
    printf("long long NG e = %lld \n",e);
    err_num++;
  }
  if( f[ff] != 6 ){
    printf("float NG f = %f \n",f);
    err_num++;
  }
  if( g[gg] != 7 ){
    printf("double NG g = %f \n",g);
    err_num++;
  }
  if( h[hh] != 8 ){
    printf("long double NG h = %Lf \n",h);
    err_num++;
  }
  if( i[aa].a != 1 ){
    printf("struct 1 int NG h = %d \n",i[aa].a);
    err_num++;
  }
  if( i[bb].b != 2 ){
    printf("struct 2 char h = %d \n",i[bb].b);
    err_num++;
  }
  if( i[cc].c != 3 ){
    printf("struct 3 float h = %f \n",i[cc].c);
    err_num++;
  }
  
  if( err_num == 0 ){
    printf("OK\n");
  }
}

int lto_sub_39(){
  foo(1, 2, 3, 4, 5, 6, 7, 8, 9);
  return 0;
}
