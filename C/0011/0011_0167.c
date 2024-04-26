#include <string.h>
#include  <stdio.h>
void sub4(char *p4);
void sub3(char *p3);
void sub2(char *p2);
void sub1(char *p1);

char x1[]={"XXXXXXXXXAXXXXXXXXXBXXXXXXXXXCXXXXXXXXXDXXXXXXXXXEXXXXXXXXXFXXXXXXXXXGXXXXXXXXXHXXXXXXXXXIXXXXXXXXXJXXXXXXXXXKXXXXXXXXXLXXXXXXXXXMXXXXXXXXXNXXXXXXXXXOXXXXXXXXXPXXXXXXXXXQXXXXXXXXXRXXXXXXXXXSXXXXXXXXXTXXXXXXXXXUXXXXXXXXXVXXXXXXXXXWXXXXXXXXXXXXXXXXXXXYXXXXXXXXXZ"};
char x2[]={"ABC"};
int main() {
  static char x3[]={"XXXXXXXXXAXXXXXXXXXBXXXXXXXXXCXXXXXXXXXDXXXXXXXXXEXXXXXXXXXFXXXXXXXXXGXXXXXXXXXHXXXXXXXXXIXXXXXXXXXJXXXXXXXXXKXXXXXXXXXLXXXXXXXXXMXXXXXXXXXNXXXXXXXXXOXXXXXXXXXPXXXXXXXXXQXXXXXXXXXRXXXXXXXXXSXXXXXXXXXTXXXXXXXXXUXXXXXXXXXVXXXXXXXXXWXXXXXXXXXXXXXXXXXXXYXXXXXXXXXZ"};
  static char x4[]={"ABC"};
  printf("*** TEST START ***\n");
  sub1(x1);
  sub2(x2);
  sub3(x3);
  sub4(x4);
  printf("***  TEST END  ***\n");
}
void sub1(char *p1)
{
  char s1[sizeof(x1)+1];
  memcpy(s1,p1,sizeof(x1)+1);
  if (memcmp(s1,p1,sizeof(x1))==0)
       { printf(" ** NO.1 TEST OK **\n"); }
  else { printf(" ## NO.1 TEST NG ##\n"); }
}
void sub2(char *p2)
{
  char s2[sizeof(x2)+1];
  memcpy(s2,p2,sizeof(x2)+1);
  if (memcmp(s2,p2,sizeof(x2))==0)
       { printf(" ** NO.2 TEST OK **\n"); }
  else { printf(" ## NO.2 TEST NG ##\n"); }
}
void sub3(char *p3)
{
  char s3[sizeof(x1)+1];
  memcpy(s3,p3,sizeof(x1)+1);
  if (memcmp(s3,p3,sizeof(x1))==0)
       { printf(" ** NO.3 TEST OK **\n"); }
  else { printf(" ## NO.3 TEST NG ##\n"); }
}
void sub4(char *p4)
{
  char s4[sizeof(x2)+1];
  memcpy(s4,p4,sizeof(x2)+1);
  if (memcmp(s4,p4,sizeof(x2))==0)
       { printf(" ** NO.4 TEST OK **\n"); }
  else { printf(" ## NO.4 TEST NG ##\n"); }
}
