#include <stdio.h>
struct x {
 int a;
};

void sub( struct x * x) {
 if ( x->a!=2) puts("NG"); else puts("OK");
}

 static struct {
   int d;
   struct x const xx;
   int e;
 } y={1,{2},3};
int main() {
 struct x aaa;

 aaa=y.xx;

 sub(&aaa);
}
 

