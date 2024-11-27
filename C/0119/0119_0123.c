#include <stdlib.h>
#include <string.h>
#include <math.h>
#include  <stdio.h>
char x1[]={"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"};
char x2[]={"XXX"};
int main() {
  static char x3='X';
         char s1[sizeof(x1)+1];
         char s2[sizeof(x2)+1];
  printf("*** SCPIL03 TEST START ***\n");
  memset(s1,0,sizeof(x1));
  memset(s2,0,sizeof(x2));
  memset(s1,'X',sizeof(x1)-1);
  memset(s2,x3,sizeof(x2)-1);
  if (memcmp(s1,x1,sizeof(x1))==0)
       { printf(" ** NO.1 TEST OK **\n"); }
  else { printf(" ## NO.1 TEST NG ##\n"); }
  if (memcmp(s2,x2,sizeof(x2))==0)
       { printf(" ** NO.2 TEST OK **\n"); }
  else { printf(" ## NO.2 TEST NG ##\n"); }
  printf("*** SCPIL03 TEST END   ***\n");
exit (0);
}
