#include <stdlib.h>
#include <stdio.h>
#include <math.h>

  struct aa1
   { float   bb[10];
     char    c1[1];
     char    c2[1];
     char    c3[1];
     char    c4[1];
     char    c5[1];
     char    c6[1]; } fw;
int main()
{
  double     d800a[10]={0,0,0,0,0,0,0,0,0,0};
  double     d800b[10]={2,4,6,8,10,1,3,5,7,9};
  double     d800c[10]={9,7,5,3,1,10,8,6,4,2};
  double       d8x = 0;
  double       d8y = 2;
  double       d8z = 1;
  unsigned int u400a[10]={0,0,0,0,0,0,0,0,0,0};
  unsigned int u400b[10]={2,4,6,8,10,1,3,5,7,9};
  unsigned int u400c[10]={9,7,5,3,1,10,8,6,4,2};
  unsigned int u400d[10]={2,2,2,3,3,3,3,2,2,2};
  int          i400a[10]={3,3,5,1,9,9,6,2,4,8};
  int          yyy = 2;
  int          xxx,n=3;
  const int    zzz = 5;
  int i,j,iii=0;
  unsigned int *ip1;
  unsigned int *ip2;
  unsigned int *ip3;
     for (i=9;i>=0;i--)
     {
       fw.bb[i] = 1.1122;
       fw.c1[0] = 't';
       fw.c2[0] = 'e';
       fw.c3[0] = 's';
       fw.c4[0] = 't';
       fw.c5[0] = '-';
       fw.c6[0] = '1';
     }
  printf("\n## ");
  printf("%c",fw.c1[0]);
  printf("%c",fw.c2[0]);
  printf("%c",fw.c3[0]);
  printf("%c",fw.c4[0]);
  printf("%c",fw.c5[0]);
  printf("%c",fw.c6[0]);
  printf(" ##\n");
  for (i=iii;i<10;i=i+1) printf("%g ",fw.bb[i]);
  printf("\n");
  ip1 = &u400b[4];
  iii = 0;
  xxx = 10;
  yyy = 1;
  i = 0;
  n = 9;
  ip1 = u400b;
  for (i=i;i==i;i=i+1)
  {
    if(i==10) goto exit;
    u400c[i] = *(ip1+i) * 2;
    u400a[i] = *(ip1+n) + u400c[5];
    n--;
  }
  exit:
  printf("\n** TEST-2 **\n");
  for (i=9;i>=0;i--) printf("%d  ",u400a[i]);
  printf("\n");
  for (i=iii;i<xxx;i+=yyy) printf("%d  ",u400c[i]);
  yyy = 1;
  ip1 = &u400a[0];
  for (i=10;i>0;i-=yyy)
  {
    *(ip1) = u400b[i-yyy] * u400c[i-1] + i;
  }
  printf("\n");
  printf("\n** TEST-3 **\n");
  for (i=0;i<10;i++) printf("%d  ",u400a[i]);
  ip1 = &u400a[0];
  ip2 = &u400c[0];
  for (i=1;i<9;i++)
  {
    *(ip1+i400a[5]) = u400b[5-(2-5)] / *(ip2+5);
  }
  printf("\n");
  printf("\n** TEST-4 **\n");
  for (i=0;i<10;i++) printf("%d  ",u400a[i]);
  xxx = 9;
  yyy = 1;
  ip1 = &u400a[xxx];
  ip2 = &u400c[xxx];
  ip3 = &u400d[xxx];
  for (i=xxx;i>=0;i-=yyy)
    for (j=i;j>=0;j-=yyy)
  {
    *(ip1-i400a[j-(i-xxx)]) = *(ip2-i) + *(ip3-(i400a[zzz-1]));
  }
  printf("\n");
  printf("\n** TEST-5 **\n");
  for (i=0;i<10;i++) printf("%d  ",u400a[i]);
  printf("\n");
	exit(0);
}
