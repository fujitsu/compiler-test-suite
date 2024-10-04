#include <stdio.h>
int func2(int ii, int jj);
int func1(char *xx, char *yy);

int main()
{ int x=4;int i,j,b,c,y;
  printf("  04 START   \n");
  func1(x&0?"a":"b",x&4?"b":"a");
  func1(x&0?"a":"b","b");
  i=1;j=0;x=1,y=1;b=0,c=1;
  func2(x&0?(i+i):(i+j),x&&y) ;
  func2(x&&(0?(i+i):(i+j))&&1,(x-1)?b:c);
  printf("  04 END     \n");
}
int func1(xx,yy)
char *xx;
char *yy;
{
  if (*xx==*yy)
    printf("  04-1&2 OK  \n");
  else
    printf("  04-1&2 NG  \n");
}
int func2(ii,jj)
int ii,jj;
{
  if (ii==jj)
    printf("  04-3&4 OK  \n");
  else
    printf("  04-3&4 NG  \n");
}
