#include <string.h>
#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int sub2(char *x4);
int sub1(char *x3);
char x1[]={"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXZ"};
char x2[]={"ABC"};
int main() {
  static char x3[]={"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXZ"};
  static char x4[]={"ABC"};
  printf("*** SCPIL05 TEST START ***\n");
  sub1(x3);
  sub2(x4);
  printf("*** SCPIL05 TEST END   ***\n");
exit (0);
}
int sub1(x3)
  char *x3;
{
  if (strcmp(x1,x3)==0)
       { printf(" ** NO.1 TEST OK **\n"); }
  else { printf(" ## NO.1 TEST NG ##\n"); }
}
int sub2(x4)
  char *x4;
{
  if (strcmp(x2,x4)==0)
       { printf(" ** NO.2 TEST OK **\n"); }
  else { printf(" ## NO.2 TEST NG ##\n"); }
}
