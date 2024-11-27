#include <string.h>
#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int sub4(char *p4);
int sub3(char *p3);
int sub2(char *p2);
int sub1(char *p1);
char x1[]={"XXXXXXXXXAXXXXXXXXXBXXXXXXXXXCXXXXXXXXXDXXXXXXXXXEXXXXXXXXXFXXXXXXXXXGXXXXXXXXXHXXXXXXXXXIXXXXXXXXXJXXXXXXXXXKXXXXXXXXXLXXXXXXXXXMXXXXXXXXXNXXXXXXXXXOXXXXXXXXXPXXXXXXXXXQXXXXXXXXXRXXXXXXXXXSXXXXXXXXXTXXXXXXXXXUXXXXXXXXXVXXXXXXXXXWXXXXXXXXXXXXXXXXXXXYXXXXXXXXXZ"};
char x2[]={"ABC"};
int main() {
  static char x3[]={"XXXXXXXXXAXXXXXXXXXBXXXXXXXXXCXXXXXXXXXDXXXXXXXXXEXXXXXXXXXFXXXXXXXXXGXXXXXXXXXHXXXXXXXXXIXXXXXXXXXJXXXXXXXXXKXXXXXXXXXLXXXXXXXXXMXXXXXXXXXNXXXXXXXXXOXXXXXXXXXPXXXXXXXXXQXXXXXXXXXRXXXXXXXXXSXXXXXXXXXTXXXXXXXXXUXXXXXXXXXVXXXXXXXXXWXXXXXXXXXXXXXXXXXXXYXXXXXXXXXZ"};
  static char x4[]={"ABC"};
  printf("*** SCPIL06 TEST START ***\n");
  sub1(x1);
  sub2(x2);
  sub3(x3);
  sub4(x4);
  printf("*** SCPIL06 TEST END   ***\n");
exit (0);
}
int sub1(p1)
  char *p1;
{
  char s1[sizeof(x1)+1];
  strcpy(s1,p1);
  if (strcmp(s1,p1)==0)
       { printf(" ** NO.1 TEST OK **\n"); }
  else { printf(" ## NO.1 TEST NG ##\n"); }
}
int sub2(p2)
  char *p2;
{
  char s2[sizeof(x2)+1];
  strcpy(s2,p2);
  if (strcmp(s2,p2)==0)
       { printf(" ** NO.2 TEST OK **\n"); }
  else { printf(" ## NO.2 TEST NG ##\n"); }
}
int sub3(p3)
  char *p3;
{
  char s3[sizeof(x1)+1];
  strcpy(s3,p3);
  if (strcmp(s3,p3)==0)
       { printf(" ** NO.3 TEST OK **\n"); }
  else { printf(" ## NO.3 TEST NG ##\n"); }
}
int sub4(p4)
  char *p4;
{
  char s4[sizeof(x2)+1];
  strcpy(s4,p4);
  if (strcmp(s4,p4)==0)
       { printf(" ** NO.4 TEST OK **\n"); }
  else { printf(" ## NO.4 TEST NG ##\n"); }
}
