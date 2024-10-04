#include<stdio.h>
   struct tag2 {int s;}st2;
int main()
  {
   printf("*** \n");
{
   int i=1;
   int a=1;
   int *pq;
   int **pp,**qq;
   int **x;
   pq=&a;
   pp=&pq;
   qq=&pq;
   x=(a<i?pp:qq);
   if(**x==1)
     printf("*** \n");
   else
     printf("*** \n");
}
{
   int i=1;
   struct tag {int a; int b;}st,*pq=&st,**qq=&pq,**pp=&pq,**x;

   st.a=2;
   x=(i==1?qq:pp);
   i=(&(**x))->a;
   if(i==2)
     printf("*** \n");
   else
     printf("*** \n");
}
{
   int i=1;
   int f();
   int (*p)(),(*q)();
   p=f;
   q=f;
   i=((i==1)?p:q)();
   if(i==2)
     printf("*** \n");
   else
     printf("*** \n");
}
{
   int i=1;
   struct tag2 g(),(*p)(),(*q)(),*x();
   p=g;
   q=g;
  if((((i==1)?(*p):(*q))()).s==1)
     printf("*** \n");
   else
     printf("*** \n");
}
{
   int *x,a=2,b=3,i=1;
   int *p,*q;
   p=&a;
   q=&b;
   x=(i==1?p:q);
   if((*x)==2)
     printf("*** \n");
   else
     printf("*** \n");
}
{
   int i=1,a=1;
   struct tag {int a;int b;}st,*p=&st,*q=&st,*x;
   x=(i==1?p:q);
   st.a=2;
   i=x->a;
   if(i==2)
     printf("*** \n");
   else
     printf("*** \n");
}
printf("*** \n");
  }
int f()
{return (2);}
struct tag2 g()
{ static struct tag2 s={1};
return(s);
}
