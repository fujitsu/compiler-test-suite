#include <string.h>
#include  <stdio.h>
 
 int w;
 struct t {
            int  a;
            int *b;
            char c[10];
          } t1,t2;
int 
main (void)
 {
#ifdef __STDC__
    int func(int);
#else
    int func();
#endif
    static int ma=0;
    static char mc[]="123456789",*ok="OK",*ng="NG";
    int i; char cc[3][3];
    struct t *p;
    memset(cc,'\0',9);
    t1.a=1;
    t1.b=&ma;
    i=*t1.b+1;
    if(!strcpy(t1.c,mc)) printf("** strcpy err **\n");
    i=*t1.b+1;
    p=&t2;
    memset(p,'\0',sizeof(struct t));
    i=func(i);
    if(t1.a!=t2.a) memcpy(cc[0],ng,2);
    else           memcpy(cc[0],ok,2);
    if(t1.b!=t2.b) memcpy(cc[1],ng,2);
    else           memcpy(cc[1],ok,2);
    if(memcmp(t1.c,t2.c,10)) memcpy(cc[2],ng,2);
    else                     memcpy(cc[2],ok,2);
    for(i=0;i<3;i++){
        printf("*** %2s * %d ***\n",cc[i],i);
    }
    printf("*****  END *****\n");
}
#ifdef __STDC__
  int func(int i)
#else
 func(i)
 int i;
#endif
{
   struct t *p1,*p2;
   int ii;
   p1=&t1;
   p2=&t2;
   i=sizeof(struct t);
   if(i<1) return(-1);
   w = p2->a;
   ii=(int)memcpy(p2,p1,i);
   w = p2->a;
   return(w+ii);
}
