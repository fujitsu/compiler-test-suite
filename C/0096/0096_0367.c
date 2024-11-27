#include  <stdio.h>
int func(int *);
int main()
{ struct t3 {
   int t3a;
   int t3aa[61];
   };
   struct t3 st,*stp;
   int a,b,c,*p;
   stp=0;
   a=b=c=0;
   p=0;
   stp=&st;
   p=&st.t3aa[0];
   *p=10;
   a=st.t3aa[0];
   p=&(stp->t3aa[0]);
   p+=5;
   *p=30;
   func(&c);
   b=stp->t3aa[c];
   st.t3aa[1]=40;
   stp->t3aa[c]=b;     
   stp->t3aa[c]=b*2;   
   if(a==10) b=stp->t3aa[c];
   else      b=stp->t3aa[c];
   if(a==10 && b==60)
        printf(" ok\n");
   else printf(" ng a=%d b=%d\n",a,b);
   stp->t3aa[b]=b;     
}
int func(j)
int *j;
{
*j=5;
return 0;
}
