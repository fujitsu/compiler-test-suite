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
 long int i,j,s,k,m;
 long int a[10]={0,1,2,3,4,5,6,7,8,9};
 long int b[10]={0,1,2,3,4,5,6,7,8,9};
 long int c[10]={0,1,2,3,4,5,6,7,8,9};
 long int d[10]={0,1,2,3,4,5,6,7,8,9};
 int l[10]={0,1,1,1,0,0,1,1,0,1};
 long int a2[10][10],b2[10][10],c2[10][10];
 long int k2[10]={0,0,0,0,0,0,0,0,0,0};
 long int m2[10]={0,0,0,0,0,0,0,0,0,0};
#if !__GNUC__
 static void write();
 static void write2();
 static void init2();
#endif 

 s=0;
 i=-1;
 while(++i<20)
 {
  if(i>9) break;
  s++;
  if(l[i])
  {
   a[i]=b[i]+c[i];
   j=-1;
   while(j<12)
   {
    j++;
    if(j>9) break;
    c[j]=i;
   }
  }
   d[i]=s;
 }       
 printf("\ntest-1 \n");
 printf("a= ");
 write(a);
 printf("c= ");
 write(c);
 printf("d= ");
 write(d);

 init2(a2,b2,c2);
 i=-1;
 while(i++<9)
 {
  k=0;
  m=0;
  if(a[i]<5)
   {
    j=-1;
    while(j<15)
    {
     j++;
     if(j<10)
     {
      a2[i][j]=b2[i][j]+c2[j][i];
      k++;
     }
     else break;
    }
   }
   else
   {
    j=-1;
    while(j++<15)
    {
     if(9<j) 
     {
      break;
     }
     else
     {
      a2[i][j]=b2[i][j]+c2[i][j];
      m++;
     }
    }
   }
   k2[i]=k;
   m2[i]=m;
 }
 printf("\ntest-2 \n");
 printf("a[][]= \n");
 write2(a2);
 printf("k2 = ");
 write(k2);
 printf("m2 = ");
 write(m2);
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

