#include <stdio.h>
struct tag1 {
          char a;
            struct tag2 {
                struct tag3 {
                         int a;
                         int ary[3];
                         int b[2][2][2];
                 }s,*p,st2[2];
                 int a;
                 int ary[3];
                 int b;
            }st;
};
int x=(char *)(&((struct tag1 *)0)->st.ary[1])- (char *)0;
int x1=(char *)(&((struct tag1 *)0)->a)- (char *)0;
int x2=(char *)(&((struct tag1 *)0)->st.s.a)- (char *)0;
int x3=(char *)(((struct tag1 *)0)->st.s.ary)- (char *)0;
int x4=(char *)(&(((struct tag1 *)0)->st.s.ary[0]))- (char *)0;
int x5=(char *)(&(((struct tag1 *)0)->st.s.b[1][1][1]))- (char *)0;
int x6=(char *)(&(((struct tag1 *)0)->st.st2[0].b[1][1][1])) - (char *)0;
int main()
{
#if __x86_64__ || __aarch64__
if( x==168) printf("-1 ok \n"); else printf("-1 ng %d\n",x);
if(x1==0) printf("-2 ok \n"); else printf("-2 ng %d\n",x1);
if(x2==8) printf("-3 ok \n"); else printf("-3 ng %d\n",x2);
if(x3==12) printf("-4 ok \n"); else printf("-4 ng %d\n",x3);
if(x4==12) printf("-5 ok \n"); else printf("-5 ng %d\n",x4);
if(x5==52) printf("-6 ok \n"); else printf("-6 ng %d\n",x5);
if(x6==108) printf("-7 ok \n"); else printf("-7 ng %d\n",x6);
#else
if( x==160) printf("-1 ok \n"); else printf("-1 ng %d\n",x);
if(x1==0) printf("-2 ok \n"); else printf("-2 ng %d\n",x1);
if(x2==4) printf("-3 ok \n"); else printf("-3 ng %d\n",x2);
if(x3==8) printf("-4 ok \n"); else printf("-4 ng %d\n",x3);
if(x4==8) printf("-5 ok \n"); else printf("-5 ng %d\n",x4);
if(x5==48) printf("-6 ok \n"); else printf("-6 ng %d\n",x5);
if(x6==100) printf("-7 ok \n"); else printf("-7 ng %d\n",x6);
#endif
}
