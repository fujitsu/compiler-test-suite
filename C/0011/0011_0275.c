#include <string.h>
#include <stdio.h>
int sub2();
int sub1();
int main()
{
printf(" ******  START  ******  \n");
sub1();
sub2();
printf(" ******  ENDED  ******  \n");
}

int sub1()
{
char a[11],b[11];
char *s1,*s2,*p1,*p2;
int  i,flag=0;

s1=a;
s2=b;

for(i=0;i<10;i++)
{b[i]='a';}
b[10]='\0';

p1=strcpy(a,b);
for(i=0;i<10;i++)
{ if(a[i]!='a') flag=flag+1;  }
if(flag!=0)
{
printf(" ******* STRCPY -> MEMCPY *******   \n");
printf(" ***** NG  1 - 1 *****   ERROR = %d  \n",flag);
}
else printf(" ***** OK  1 - 1 *****  \n");

p2=strcpy(s1,s2);
for(i=0;i<10;i++)
{ if(a[i]!='a') flag=flag+1;  }
if(flag!=0) printf(" ***** NG  1 - 2 *****   ERROR = %d  \n",flag);
else        printf(" ***** OK  1 - 2 *****    \n");
return 0;
}

int sub2()
{
char a[300],b[300];
char *s1,*s2,*p1,*p2;
int  i,flag=0;

s1=a;
s2=b;

for(i=0;i<300;i++){b[i]='a';}
for(i=0;i<300;i++){a[i]='0';}

a[299]=b[299]=0x0;
p1=strcpy(a,b);
for(i=0;i<299;i++)
{ if(a[i]!='a') flag=flag+1;  }
if(flag!=0)
{
printf(" ******* STRCPY -> MEMCPY *******   \n");
printf(" ***** NG  2 - 1 *****   ERROR = %d  \n",flag);
}
else printf(" ***** OK  2 - 1 *****  \n");

flag=0;
for(i=0;i<300;i++){b[i]='a';}
for(i=0;i<300;i++){a[i]='0';}

a[299]=b[299]=0x0;
p2=strcpy(s1,s2);
for(i=0;i<299;i++)
{ if(a[i]!='a') flag=flag+1;  }
if(flag!=0) printf(" ***** NG  2 - 2 *****   ERROR = %d  \n",flag);
else        printf(" ***** OK  2 - 2 *****     \n");
return 0;
}
