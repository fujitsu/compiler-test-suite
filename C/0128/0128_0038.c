#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#if __GNUC__

 static void init();
 static void write();
#endif 
int main()
{
 long int i,j,k,l;
 long int a[10][10],b[10][10],c[10][10],s;
 long int d[10][10],e[10][10],f[10][10],g[10][10],h[10][10];
#if !__GNUC__
 static void init();
 static void write();
#endif 
 init(a,b,c);
 for(i=0;i<10;i++)
 {
  s=a[i][i];
  j=0;
  do{
   c[i][j]=s;
   j++;
  }while(j<10);
  j=0;
  while(j<10)
  {
   d[i][j]=c[j][i];
   j++;
  }
 }
 i=0;
 while(i<10)
 {
  for(j=0;j<10;j++)
  {
   e[i][j]=c[i][j];
  }
  j=0;
  do{
   f[i][j]=b[i][j];
   j++;
  }while(j<10);
  i++;
 }
 j=0;
label1:
 l=0;
 for(i=0;i<20;i++)
  {
label2:
   if(l==10) break;
   g[l][j]=l;
  }
 l++;
 if(l<10) goto label2;
 k=0;
 while(k<10)
 {
  h[j][k]=a[j][k]+a[k][j];
  k++;
 }
 j++;
 if(j<10) goto label1;
 printf("a[][]=\n");
 write(a);
 printf("b[][]=\n");
 write(b);
 printf("c[][]=\n");
 write(c);
 printf("d[][]=\n");
 write(d);
 printf("e[][]=\n");
 write(e);
 printf("f[][]=\n");
 write(f);
 printf("g[][]=\n");
 write(g);
 printf("h[][]=\n");
 write(h);
exit (0);
}
static void init(a,b,c)
long int a[10][10],b[10][10],c[10][10];
{

 long int i,j;
 for(i=0;i<10;i++)
 {
  for(j=0;j<10;j++)
  {
   a[i][j]=i+j;
   b[i][j]=j-i;
   c[i][j]=2*(i+j);
  }
 }
}
static void write(a)
long int a[10][10];
{
 long int i,j;
 for(i=0;i<10;i++)
 {
   printf("%ld %ld %ld %ld %ld %ld %ld %ld %ld %ld \n",\
          a[i][0],a[i][1],a[i][2],a[i][3],a[i][4],\
          a[i][5],a[i][6],a[i][7],a[i][8],a[i][9]);
 } 
}
