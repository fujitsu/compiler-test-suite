
#include <stdio.h>

void bar(){}
void bar2(){}

void foo(double *a,int b) {
  int i;
  void*p;
  if (b==0) {
    p = &&label1;
  } else {
    p = &&label2;
  }

  for (i=0;i<1024;++i) {
    a[i]=0;
  }
  goto *p;

 label1:
  bar();
 label2:
  bar2();

}

int main(void){
  double a[1024];

  foo(a,1);
  puts("OK");
  return 0;
}
