#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#include <string.h>
int sub();
int main() {
  static char x1[]={"ABC"};
  static int  x2='B';
  static int  n=3;
  char   *s;
  void   *x1v;
  printf("*** SCPIL00 TEST START ***\n");
  x1v=(void *)x1;
  s=(char *)memchr(x1v,x2,n);
  if (memcmp(s,x1+1,1)==0)
       { printf(" ** NO.1 TEST OK **\n"); }
  else { printf(" ## NO.1 TEST NG ##\n"); }
  sub();
  printf("*** SCPIL00 TEST END   ***\n");
exit (0);
}
int sub() {
  static char x1[]={"XXXXXXXXXAXXXXXXXXXBXXXXXXXXXCXXXXXXXXXDXXXXXXXXXEXXXXXXXXXFXXXXXXXXXGXXXXXXXXXHXXXXXXXXXIXXXXXXXXXJXXXXXXXXXKXXXXXXXXXLXXXXXXXXXMXXXXXXXXXNXXXXXXXXXOXXXXXXXXXPXXXXXXXXXQXXXXXXXXXRXXXXXXXXXSXXXXXXXXXTXXXXXXXXXUXXXXXXXXXVXXXXXXXXXWXXXXXXXXXXXXXXXXXXXYXXXXXXXXXZ"};
  static int  x2='Z';
  static int  n=260;
  char   *s;
  void   *x1v;
  x1v=(void *)x1;
  s=(char *)memchr(x1v,x2,n);
  if (memcmp(s,x1+259,1)==0)
       { printf(" ** NO.2 TEST OK **\n"); }
  else { printf(" ## NO.2 TEST NG ##\n"); }
}
