#include<stdio.h>

struct TAG{
  int a;
  int b;
  int c;
};

static __thread int a[100];
static __thread struct TAG st[100];

static int bar(){
  int i,ans;
  for(i=0; i<25; i=i+4){
    ans = a[i] +
      a[i+1] +
      a[i+2] +
      a[i+3] +
      st[i].a +
      st[i+1].a +
      st[i+2].a +
      st[i+3].a +
      st[i].b +
      st[i+1].b +
      st[i+2].b +
      st[i+3].b +
      st[i].c +
      st[i+1].c +
      st[i+2].c +
      st[i+3].c;
  }
  return ans;
}
static int foo(int x, int y, int z){
  int i;
  for(i=0; i<100; i++){
    a[i] = i;
    st[i].a = i + x;
    st[i].b = i + y;
    st[i].c = i + z;
  }
  return bar();
}
  
int lto_sub_53(){
  int num = 0;

  num = foo(1, 2, 3);
 
  if( num == 432 ){
    printf("OK\n");
  }
  else {
    printf("NG num = %d \n",num);
  }
}
