#include<stdio.h>
 

     struct tag2 {
        char a;
        int  b;
        };
int main()
{
  {
    struct tag {
       int a;
       int b;
       char c;
       }x,y,*p,a[3];
   int i=-1;
   p=&x;
   x.a=1;x.b=2;x.c=3;
      printf(" 03 START \n");

   if((y=x).a==1 && (*p=x).b==2 && (a[1]=x).c==3)
      printf(" 03-1  OK \n");
   else
      printf(" 03-1  NG \n");

   if( (*(p+i+1)=x).a==1 && (a[i+1]=x).c==3)
      printf(" 03-2  OK \n");
   else
      printf(" 03-2  NG \n");

  }
 {
     struct tag2  x,y,f(),(*p)[3],a[3],b[3];
        int i=1;
     x.a=1;x.b=2;a[2]=x;p=(struct tag2 (*) [])b;
    a[0]=x;

    if ((1,2,3,a[i]=x).b==2 && ((i-1)?x:a[2]).a==1)
      printf(" 03-3  OK \n");
    else
      printf(" 03-4  OK \n");

    if (f().a==5 && ((*p)[1]=a[0]).b==3)
      printf(" 03-5  OK \n");
    else
      printf(" 03-6  OK \n");
  }
      printf(" 03 END   \n");
}
struct tag2 f()
{
    struct tag2 xx;
    xx.a=5;xx.b=10;
    return xx;
}
