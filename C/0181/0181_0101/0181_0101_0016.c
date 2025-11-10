#include<stdio.h>

struct TAG{
  int a;
  char b;
  float c;
};

static __thread char a = '1';
static __thread short b = 2;
static __thread int c = 3;
static __thread long d = 4;
static __thread long long e = 5;
static __thread float f = 6;
static __thread double g = 7;
static __thread long double h = 8;
static __thread struct TAG i = {1, 2, 3};

int lto_sub_16(){
  int err_num = 0;

  if( a != '1' ){
    printf("char NG a = %c \n",a);
    err_num++;
  }
  if( b != 2 ){
    printf("short NG b = %d \n",b);
    err_num++;
  }
  if( c != 3 ){
    printf("int NG c = %d \n",c);
    err_num++;
  }
  if( d != 4 ){
    printf("long NG d = %ld \n",d);
    err_num++;
  }
  if( e != 5 ){
    printf("long long NG e = %lld \n",e);
    err_num++;
  }
  if( f != 6 ){
    printf("float NG f = %f \n",f);
    err_num++;
  }
  if( g != 7 ){
    printf("double NG g = %f \n",g);
    err_num++;
  }
  if( h != 8 ){
    printf("long double NG h = %Lf \n",h);
    err_num++;
  }
  if( i.a != 1 ){
    printf("struct 1 int NG h = %d \n",i.a);
    err_num++;
  }
  if( i.b != 2 ){
    printf("struct 2 char h = %d \n",i.b);
    err_num++;
  }
  if( i.c != 3 ){
    printf("struct 3 float h = %f \n",i.c);
    err_num++;
  }
  
  if( err_num == 0 ){
    printf("OK\n");
  }
}
