#include<stdio.h>

struct TAG{
  int a;
  int b;
  int c;
};

static __thread int a[10][10], b[10][10], c[10][10];
static __thread int d[10][10], e[10][10], f[10][10];
static __thread struct TAG sta[10][10], stb[10][10], stc[10][10];

static int bar(){
  int i,j,ans;
  for(i=0; i<10; i++){
    for(j=0; j<10; j++){
      ans = a[i][j] +
            b[i][j] +
            c[i][j] +
            d[i][j] +
	    e[i][j] +
	    f[i][j] +
	    sta[i][j].a +
	    stb[i][j].b +
	    stc[i][j].c;
    }
  }
  return ans;
}
static int foo(int x, int y, int z){
  int i,j;
  for(i=0; i<10; i++){
    for(j=0; j<10; j++){
      a[i][j] = i + x;
      b[i][j] = j + y;
      c[i][j] = i + j + z;
      d[i][j] = i + x;
      e[i][j] = j + y;
      f[i][j] = i + j + z;
      sta[i][j].a = i + x;
      stb[i][j].b = j + y;
      stc[i][j].c = i + j + z;
    }
  }
  return bar();
}
  
int lto_sub_51(){
  int num = 0;

  num = foo(1, 2, 3);
 
  if( num == 126 ){
    printf("OK\n");
  }
  else {
    printf("NG num = %d \n",num);
  }
}
