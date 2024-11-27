#include <stdlib.h>
#include <stdio.h>
#include <math.h>

  struct aa1
   { int     i1[10];
     int     i2[10][10];
     float   ff;
     float   f1[10];
     float   f2[10][10];
     double  dd[1];
     double  d1[10];
     double  d2[10][10];
     char    c1[10];} fw;
  struct aa1 *pp;
  struct aa1 *ppp[10];
int main()
{
  int          i400a[10]={0,1,0,1,0,1,0,1,0,1};
  int          i400b[10]={0,1,0,1,0,1,0,1,0,1};
  float        f400a[10]={0,1,0,1,0,1,0,1,0,1};
  float        f400b[10]={0,1,0,1,0,1,0,1,0,1};
  double       d800a[10]={0,1,0,1,0,1,0,1,0,1};
  double       d800b[10]={0,1,0,1,0,1,0,1,0,1};
  char         c100a[20]={'o','o','o','o','o','o','o','o','o','o',
                          'o','o','o','o','o','o','o','o','o','o'};
  int         *p00;
  int          xxx;
  int          yyy;
  int i,j,iii=0;
     for (i=0;i<10;i++)
     for (j=9;j>=0;j--)
     {
       fw.i1[i] = 1+i;
       fw.i2[i][j] = i-1;
       fw.f1[i] = 1.11+i;
       fw.f2[i][j] = i-2.22;
       fw.d1[i] = 3.33+i;
       fw.d2[i][j] = i-4.44;
       fw.c1[i] = 'k';
     }
  printf("\n ** i1[10] ** \n");
  for (i=iii-iii;i<10;i=i+1) printf("%d ",fw.i1[i]);
  printf("\n");
  printf("\n ** f1[10] ** \n");
  for (i=0;i<10;i++) printf("%f ",fw.f1[i]);
  printf("\n");
  printf("\n ** d1[10] ** \n");
  for (i=0;i<10;i+=1) printf("%g ",fw.d1[i]);
  printf("\n");
  printf("\n ** c1[10] ** \n");
  for (i=iii-iii;i<10;i=i+1) printf("%c ",fw.c1[i]);
  printf("\n");
     p00 = &fw.i1[1];
     xxx = 1;
     yyy = 1;
     for (i=1;i<9;i++) {
       yyy = yyy + 1;
       ppp[i] = &fw;
     }
     ppp[9] = &fw;
     ppp[0] = &fw;
     pp = &fw;
     for (i=1;i<9;i++)
     for (j=8;j>=1;j-=2)
     {
       i400a[i] = pp->i1[i+1];
       i400b[j-1] = pp->i2[i+1][j-1];
       f400a[i] = pp->f1[j+1]+pp->f1[i+1];
       f400b[j-1] = pp->f2[i+1][j-i]+ppp[j-1]->f1[j-1];
       d800a[i+1] = pp->d1[i+1];
       d800a[i+1] = f400b[xxx-xxx]-pp->d1[i+xxx];
       d800b[j] = pp->d2[i+1][j+1];
       d800b[2] = *p00;
       c100a[i] = fw.c1[yyy];
       c100a[0] = 'm';
       if(pp->d1[i]+pp->i1[i] < 10) goto next1;
       else                         goto next2;
next1:
       c100a[2] = 'a';
       goto exit;
     }
next2:
       c100a[2] = 'a';
       c100a[4] = 'a';
       c100a[6] = 'a';
       c100a[8] = 'a';
       c100a[19] = 'z';
exit:
  printf("\n ** i400a[10] ** \n");
  for (i=iii-iii;i<10;i=i+1) printf("%d ",i400a[i]);
  printf("\n");
  printf("\n ** i400b[10] ** \n");
  for (i=iii-iii;i<10;i=i+1) printf("%d ",i400b[i]);
  printf("\n");
  printf("\n ** f400a[10] ** \n");
  for (i=iii-iii;i<10;i=i+1) printf("%f ",f400a[i]);
  printf("\n");
  printf("\n ** f400b[10] ** \n");
  for (i=iii-iii;i<10;i=i+1) printf("%f ",f400b[i]);
  printf("\n");
  printf("\n ** d800a[10] ** \n");
  for (i=iii-iii;i<10;i=i+1) printf("%g ",d800a[i]);
  printf("\n");
  printf("\n ** d800b[10] ** \n");
  for (i=iii-iii;i<10;i=i+1) printf("%g ",d800b[i]);
  printf("\n");
  printf("\n ** c100a[20] ** \n");
  for (i=iii-iii;i<20;i=i+1) printf("%c ",c100a[i]);
  printf("\n");
	exit(0);
}
