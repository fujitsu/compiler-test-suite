#include <stdio.h>

#include <string.h>
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
static char a[11]="abcdefghij";
static char b[11]="abcdefghij";
char *s1,*s2;
int  i,p;
s1=a;
s2=b;

a[9]=b[9]='b';
p=strcmp(s1,s2);
if(p!=0)
printf(" ***** NG  1 - 1(1) *****  P= %d \n", p);
else
printf(" ***** OK  1 - 1(1) *****  \n");

a[9]='b';
b[9]='a';
p=strcmp(s1,s2);
#if __aarch64__
if(p<=0)
#else
if(p!=1)
#endif
printf(" ***** NG  1 - 2(1) *****  P=%d \n",p);
else
printf(" ***** OK  1 - 2(1) *****   \n");

a[9]='a';
b[9]='b';
p=strcmp(s1,s2);
#if __aarch64__
if(p>=0)
#else
if(p!=-1)
#endif
printf(" ***** NG  1 - 3(1) *****  P=%d \n",p);
else
printf(" ***** OK  1 - 3(1) *****   \n",p);
return 0;
}
int sub2()
{
char a[301],b[301];
char *s1,*s2;
int  i,p;

s1=a;
s2=b;

for(i=0;i<299;i++) a[i]=b[i]='a';
a[300]=b[300]='\0';

a[299]=b[299]='b';
p=strcmp(s1,s2);
if(p!=0)
printf(" ***** NG  2 - 1(1) *****   P=%d  \n",p);
else
printf(" ***** OK  2 - 1(1) *****   \n");

a[9]='b';
b[9]='a';
p=strcmp(s1,s2);
#if __aarch64__
if(p<=0)
#else
if(p!=1)
#endif
printf(" ***** NG  2 - 2(1) *****  P=%d  \n",p);
else
printf(" ***** OK  2 - 2(1) *****  \n");

a[9]='a';
b[9]='b';
p=strcmp(s1,s2);
#if __aarch64__
if(p>=0)
#else
if(p!=-1)
#endif
printf(" ***** NG  2 - 3(1) *****  P=%d \n",p);
else
printf(" ***** OK  2 - 3(1) ***** \n");
return 0;
}
