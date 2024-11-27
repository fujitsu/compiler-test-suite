#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#if __GNUC__

static void init();
static void write();
#endif 
int main()
{
 struct st1 {
   long int a[10][10],b[10][10],c[10][10];
   long int d[10][10],e[10][10],f[10][10],g[10][10],h[10][10];
 } t;
 struct st1 *p = &t;
 long int i,j,k,l,s;
#if !__GNUC__
 static void init();
 static void write();
#endif 
 init(&p->a,&p->b,&p->c);
 for(i=0;i<10;i++)
 {
  s=p->a[i][i];
  j=0;
  do{
   p->c[i][j]=s;
   j++;
  }while(j<10);
  j=0;
  while(j<10)
  {
   p->d[i][j]=p->c[j][i];
   j++;
  }
 }
 i=0;
 while(i<10)
 {
  for(j=0;j<10;j++)
  {
   p->e[i][j]=p->c[i][j];
  }
  j=0;
  do{
   p->f[i][j]=p->b[i][j];
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
   p->g[l][j]=l;
  }
 l++;
 if(l<10) goto label2;
 k=0;
 while(k<10)
 {
  p->h[j][k]=p->a[j][k]+p->a[k][j];
  k++;
 }
 j++;
 if(j<10) goto label1;
 printf("a[][]=\n");
 write(p->a);
 printf("b[][]=\n");
 write(p->b);
 printf("c[][]=\n");
 write(p->c);
 printf("d[][]=\n");
 write(p->d);
 printf("e[][]=\n");
 write(p->e);
 printf("f[][]=\n");
 write(p->f);
 printf("g[][]=\n");
 write(p->g);
 printf("h[][]=\n");
 write(p->h);
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
