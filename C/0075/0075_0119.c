#include <stdio.h>
#include <string.h>
int sub(int i) { return i;}
int sub1(char *x) { memset(x,'b',10); }
int sub2(char *x) {
 int i;
 for (i=0; i< 10; i++) 
  if (x[i]!='a') {puts("ng");return 0;}
 puts("ok");
}
int main(){
 char x[10];

 sub1(x);
 memset(x,'a',sub(sizeof(x)));
 sub2(x);
}

