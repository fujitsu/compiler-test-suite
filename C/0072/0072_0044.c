#include <stdlib.h>
#include <stdio.h>
#include <math.h>

 
#if __GNUC__

 static void write();
 static void write2();
 static void init2();
#endif 
int main()
{
 struct st1 {
   long int a[10],b[10],c[10],d[10];
   int      l[10];
   long int a2[10][10],b2[10][10],c2[10][10];
   long int k2[10],m2[10];
 } t;
 struct st1 *p = &t;
 long int i,j,s,k,m;
#if !__GNUC__
 static void write();
 static void write2();
 static void init2();
#endif 

 for(i=0;i<10;i++){
   p->a[i]=i;
   p->b[i]=i;
   p->c[i]=i;
   p->d[i]=i;
   if(i==0 || i==4 || i==5 || i==8)
     p->l[i]=0;
   else
     p->l[i]=1;
   p->k2[i]=0;
   p->m2[i]=0;
 }

 s=0;
 i=-1;
 while(++i<10)
 {
  s++;
  if(p->l[i]) goto label1;
  p->a[i]=p->b[i]+p->c[i];
  goto label2;
label1:
   j=0;
   while(j<10)
   {
    if(p->c[j]<p->a[j]) goto label3;
    p->c[j]=i;
label3:
    p->c[j]=p->c[j]+1;  
    j++;
   }
label2:
   p->d[i]=s;
 }       
 printf("test-1 \n");
 printf("a= ");
 write(p->a);
 printf("c= ");
 write(p->c);
 printf("d= ");
 write(p->d);

 init2(&p->a2,&p->b2,&p->c2);
 i=-1;
 while(i++<9)
 {
  k=0;
  m=0;
  if(p->a[i]<5)
   {
    j=0;
    while(j<10)
    {
     if(j<5) goto label4;
     p->a2[i][j]=p->b2[i][j]+p->c2[j][i];
     k++;
label4:
     j++;
    }
   }
   else
   {
    j=0;
    while(j++<9)
    {
     if(i<5 && j<5) 
     {
      p->a2[i][j]=p->b2[i][j]+p->c2[i][j];
      goto endif;
     }
     if(i<10 || j<10)
     {
      p->a2[i][j]=p->b2[i][j]+p->c2[j][i];
      goto endif;
     }
      p->a2[i][j]=p->b2[j][i]+p->c2[i][j];
endif:;
      m++;
    }
   }
   p->k2[i]=k;
   p->m2[i]=m;
 }
 printf(" test-2 \n");
 printf(" a[][]= \n");
 write2(p->a2);
 printf(" k2 = ");
 write(p->k2);
 printf(" m2 = ");
 write(p->m2);
exit (0);
}
static void write(a)
long int a[10];
{
 printf("%ld  %ld  %ld  %ld  %ld  %ld  %ld  %ld  %ld  %ld  \n",\
         a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9]);
}
static void write2(a)
long int a[10][10];
{
 long int i;
 for(i=0;i<10;i++)
 { 
   printf("%ld  %ld  %ld  %ld  %ld  %ld  %ld  %ld  %ld  %ld  \n",\
            a[i][0],a[i][1],a[i][2],a[i][3],a[i][4],\
            a[i][5],a[i][6],a[i][7],a[i][8],a[i][9]);
 }
}
static void init2(a,b,c)
long int a[10][10],b[10][10],c[10][10];
{

 long int i,j;
 for(i=0;i<10;i++)
 {
  for(j=0;j<10;j++)
  {
   a[i][j]=0;
   b[i][j]=i+j;
   c[i][j]=(i+j)*2;
  }
 }
}
