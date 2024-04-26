#include <stdio.h>

#include <string.h>
int main()
{
  char *p,*p1,*p2;
  char a[2],b[2];
  int i;
  printf("         TEST \n");
  a[0]='\0';
  p1=a;p2=b;
  i=strcmp(p1,p2);
  if(i!=1) printf(" STRCMP OK  \n");
  else     printf(" STRCMP NG  \n");
  b[0]='a';
  p=strcpy(b,a);
  if(*p!='a') printf(" STRCPY OK  \n");
  else        printf(" STRCPY NG  \n");
}
