#include <stdio.h>
int sub(int i) { return i;}
void sub2(int i) { if (i) puts("NG"); else puts("OK");}
int main() {
 int a=sub(-1);

 sub2((unsigned)a < 10);
}

