#include<stdio.h>

struct TAG{
  int a;
  char b;
  float c;
};

static const __thread char a[2] = { '1', '1' };
static const __thread short b[3] = { 2, 2, 2 };
static const __thread int c[4] = { 3, 3, 3, 3 };
static const __thread long d[5] = { 4, 4, 4, 4, 4};
static const __thread long long e[6] = { 5, 5, 5, 5, 5, 5};
static const __thread float f[7] = {6, 6, 6, 6, 6, 6, 6};
static const __thread double g[8] = {7, 7, 7, 7, 7, 7, 7, 7};
static const __thread long double h[9] = { 8, 8, 8, 8, 8, 8, 8, 8, 8 };
static const __thread struct TAG i[10] = { {1,2,3},{1,2,3},{1,2,3},{1,2,3},{1,2,3},{1,2,3},{1,2,3},{1,2,3},{1,2,3},{1,2,3} };

int lto_sub_29(){
  int err_num = 0;
  
  if( a[1] != '1' ){
    printf("char NG a = %c \n",a);
    err_num++;
  }
  if( b[2] != 2 ){
    printf("short NG b = %d \n",b);
    err_num++;
  }
  if( c[3] != 3 ){
    printf("int NG c = %d \n",c);
    err_num++;
  }
  if( d[4] != 4 ){
    printf("long NG d = %ld \n",d);
    err_num++;
  }
  if( e[5] != 5 ){
    printf("long long NG e = %lld \n",e);
    err_num++;
  }
  if( f[6] != 6 ){
    printf("float NG f = %f \n",f);
    err_num++;
  }
  if( g[7] != 7 ){
    printf("double NG g = %f \n",g);
    err_num++;
  }
  if( h[8] != 8 ){
    printf("long double NG h = %Lf \n",h);
    err_num++;
  }
  if( i[1].a != 1 ){
    printf("struct 1 int NG h = %d \n",i[1].a);
    err_num++;
  }
  if( i[2].b != 2 ){
    printf("struct 2 char h = %d \n",i[2].b);
    err_num++;
  }
  if( i[3].c != 3 ){
    printf("struct 3 float h = %f \n",i[3].c);
    err_num++;
  }
  
  if( err_num == 0 ){
    printf("OK\n");
  }
}
