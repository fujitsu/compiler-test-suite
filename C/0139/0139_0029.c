#include <stdlib.h>
#include <math.h>
  



#include<stdio.h>
int scrpz18();
int main()
{
   scrpz18() ;   

exit (0);
}
 
 
 


#ifdef v10
 

#define bxpr(format,value) printf("value = %format ",(value))
#define nl putchar('\n')
#define bxprnt1(f,x1) bxpr(f,x1); nl
#define bxprnt2(f,x1,x2) bxpr(f,x1); bxprnt1(f,x2)
#define bxprnt3(f,x1,x2,x3) bxpr(f,x1); bxprnt2(f,x2,x3)
#define bxprnt4(f,x1,x2,x3,x4) bxpr(f,x1); bxprnt3(f,x2,x3,x4)

int a[!={0,1,2,3,4};
int *p[!={a,a+1,a+2,a+3,a+4};
int **pp=p;

scrpz18()
{
     bxprnt2(d,a,*a);
     bxprnt3(d,p,*p,**p);
     bxprnt3(d,pp,*pp,**pp);
     nl;

     pp++; bxprnt3(d,pp-p,*pp-a,**pp);
     *pp++;bxprnt3(d,pp-p,*pp-a,**pp);
     *++pp;bxprnt3(d,pp-p,*pp-a,**pp);
     ++*pp;bxprnt3(d,pp-p,*pp-a,**pp);
     nl;

     pp=p;
     *pp++; bxprnt3(d,pp-p,*pp-a,**pp);
     *++*pp;bxprnt3(d,pp-p,*pp-a,**pp);
     ++**pp;bxprnt3(d,pp-p,*pp-a,**pp);
}
#else
 

int bxsb(j)
int j;
{
     static int i = 0;
     static  int bxdt[] = { 0,0,0,1,1,1,2,2,2,3,3,3,3,4,4,
                          1,1,1,1,2,2,1,2,3 };
     if( j != bxdt[i++] ) {
       puts(" NG ");
       exit(1);
     }
}

#define bxpr(format,value) \
{ int b; printf(#value" = %"#format" ",b=(value));bxsb(b); }
#define nl printf("\n")
#define bxprnt1(f,x1) bxpr(f,x1); nl
#define bxprnt2(f,x1,x2) bxpr(f,x1); bxprnt1(f,x2)
#define bxprnt3(f,x1,x2,x3) bxpr(f,x1); bxprnt2(f,x2,x3)
#define bxprnt4(f,x1,x2,x3,x4) bxpr(f,x1); bxprnt3(f,x2,x3,x4)

int a[]={0,1,2,3,4};
int *p[]={a,a+1,a+2,a+3,a+4};
int **pp=p;

int scrpz18()
{
     bxprnt1(d,*a);
     bxprnt1(d,**p);
     bxprnt1(d,**pp);
     nl;

     pp++; bxprnt3(d,pp-p,*pp-a,**pp);
     *pp++;bxprnt3(d,pp-p,*pp-a,**pp);
     *++pp;bxprnt3(d,pp-p,*pp-a,**pp);
     ++*pp;bxprnt3(d,pp-p,*pp-a,**pp);
     nl;

     pp=p;
     *pp++; bxprnt3(d,pp-p,*pp-a,**pp);
     *++*pp;bxprnt3(d,pp-p,*pp-a,**pp);
     ++**pp;bxprnt3(d,pp-p,*pp-a,**pp);
     puts(" SCRPZ18 PASS ");
}
#endif
