#include<stdio.h>

struct TAG{
  int a;
  char b;
  float c;
};

extern __thread char aa[2];
extern __thread short ba[3];
extern __thread int ca[4];
extern __thread long da[5];
extern __thread long long ea[6];
extern __thread float fa[7];
extern __thread double ga[8];
extern __thread long double ha[9];
extern __thread struct TAG ia[10];

void foo(int a, int bb, int cc, int dd, int ee, int ff, int gg, int hh, int ii){
  int err_num = 0;

  if( aa[a+1] != '1' ){
    printf("char NG a = %c \n",aa);
    err_num++;
  }
  if( ba[bb+1] != 2 ){
    printf("short NG b = %d \n",ba);
    err_num++;
  }
  if( ca[cc+1] != 3 ){
    printf("int NG c = %d \n",ca);
    err_num++;
  }
  if( da[dd+1] != 4 ){
    printf("long NG d = %ld \n",da);
    err_num++;
  }
  if( ea[ee+1] != 5 ){
    printf("long long NG e = %lld \n",ea);
    err_num++;
  }
  if( fa[ff+1] != 6 ){
    printf("float NG f = %f \n",fa);
    err_num++;
  }
  if( ga[gg+1] != 7 ){
    printf("double NG g = %f \n",ga);
    err_num++;
  }
  if( ha[hh+1] != 8 ){
    printf("long double NG h = %Lf \n",ha);
    err_num++;
  }
  if( ia[a+1].a != 1 ){
    printf("struct 1 int NG h = %d \n",ia[a+1].a);
    err_num++;
  }
  if( ia[bb+1].b != 2 ){
    printf("struct 2 char h = %d \n",ia[bb+1].b);
    err_num++;
  }
  if( ia[cc+1].c != 3 ){
    printf("struct 3 float h = %f \n",ia[cc+1].c);
    err_num++;
  }
  
  if( err_num == 0 ){
    printf("OK\n");
  }
}

int main(){

  aa[1] = '1';
  ba[2] = 2;
  ca[3] = 3;
  da[4] = 4;
  ea[5] = 5;
  fa[6] = 6;
  ga[7] = 7;
  ha[8] = 8;
  ia[1].a = 1;
  ia[2].b = 2;
  ia[3].c = 3;
  
  foo(0, 1, 2, 3, 4, 5, 6, 7, 8);
  return 0;
}
