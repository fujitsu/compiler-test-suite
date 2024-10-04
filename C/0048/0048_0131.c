#include <stdio.h>

typedef char                   tc    ;
typedef signed char            tsc   ;
typedef unsigned char          tuc   ;
typedef short int              tsi   ;
typedef signed short int       tssi  ;
typedef unsigned short int     tusi  ;
typedef int                    ti    ;
typedef signed int             tsii  ;
typedef unsigned int           tui   ;
typedef long int               tli   ;
typedef signed long int        tsli  ;
typedef unsigned long int      tuli  ;
typedef long long int          tlli  ;
typedef signed long long int   tslli ;
typedef unsigned long long int tulli ;
typedef float                  tf    ;
typedef double                 td    ;
typedef long double            tld   ;
int func1(tc a, tsc b, tuc c, tsi d, tssi e, tusi f, ti g, tsii h, tui i, tli j, tsli k, tuli l, tlli m, tslli n, tulli o, tf p, td q, tld r);
int 
main (void)
{

        char                   a=1   ;
        signed char            b=1   ;
        unsigned char          c=1   ;
        short int              d=1   ;
        signed short int       e=1   ;
        unsigned short int     f=1   ;
        int                    g=1   ;
        signed int             h=1   ;
        unsigned int           i=1   ;
        long int               j=1   ;
        signed long int        k=1   ;
        unsigned long int      l=1   ;
        long long int          m=1   ;
        signed long long int   n=1   ;
        unsigned long long int o=1   ;
        float                  p=1.0 ;
        double                 q=1.0 ;
        long double            r=1.0 ;

int func2(                                          
 tc        a        ,
 tsc       b        ,
 tuc       c        ,
 tsi       d        ,
 tssi      e        ,
 tusi      f        ,
 ti        g        ,
 tsii      h        ,
 tui       i        ,
 tli       j        ,
 tsli      k        ,
 tuli      l        ,
 tlli      m        ,
 tslli     n        ,
 tulli     o        ,
 tf        p        ,
 td        q        ,
 tld       r        );
printf(" START\n") ;
  if (func1 (a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r)!=18 )  
    printf(" FUNC1  NG\n");
  else
    printf(" FUNC1  OK\n");

  if (func2 (a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r)!=18 )  
    printf(" FUNC2  NG\n");
  else
    printf(" FUNC2  OK\n");

printf(" END  \n") ;
}
int func1(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r)        
 tc        a        ;
 tsc       b        ;
 tuc       c        ;
 tsi       d        ;
 tssi      e        ;
 tusi      f        ;
 ti        g        ;
 tsii      h        ;
 tui       i        ;
 tli       j        ;
 tsli      k        ;
 tuli      l        ;
 tlli      m        ;
 tslli     n        ;
 tulli     o        ;
 tf        p        ;
 td        q        ;
 tld       r        ;
{
  return a+b+c+d+e+f+g+h+i+j+k+l+m+n+o+p+q+r;
}
int func2(                                          
 tc        a        ,
 tsc       b        ,
 tuc       c        ,
 tsi       d        ,
 tssi      e        ,
 tusi      f        ,
 ti        g        ,
 tsii      h        ,
 tui       i        ,
 tli       j        ,
 tsli      k        ,
 tuli      l        ,
 tlli      m        ,
 tslli     n        ,
 tulli     o        ,
 tf        p        ,
 td        q        ,
 tld       r        )
{
  return a+b+c+d+e+f+g+h+i+j+k+l+m+n+o+p+q+r;
}
