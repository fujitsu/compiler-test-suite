#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <math.h>
#define k100 100
#define true 1
#define false 0
typedef int  logical;
int sswitch;
void arctan(int c[k100], int p, int q, int flag);
void clear(int c[k100]);
void init(int a[k100], int p, int q);
void pradd(int c[k100], int a[k100]);
void prsub(int c[k100], int a[k100]);
void prmul(int a[k100], int d);
void prdiv(int b[k100], int a[k100], int d);
void prt(int n[k100]);
int main()
{
       char char1[100];
       int a[k100];
       int c[k100];
       double  ans,work;
       sswitch=0;

       work =  12.0*atan2(1.0,18.0);
       ans  =  work;
       work =   8.0*atan2(1.0,57.0);
       ans  =  work+ans;
       work =   5.0*atan2(1.0,239.0);
       ans  =  ans-work;
       sprintf(char1,"%f",ans*4.0);
       if ( strcmp(char1,"3.141593")==0) {
         puts("******* OK.1 ******");
       }
       else {
         puts("******* NG.1 ******");
       }

       clear( c );
       arctan( a, 12 , 18,       1);
       pradd( c, a );
       arctan( a,       8 , 57,  1);
       pradd( c, a );
       arctan( a,       5 ,239,  1);
       prsub( c, a );
       prmul( c, 4 );
       prt( c );
       if( c[99] == 148 && c[0] == 3 )
         printf("OK \n");
       else
         printf("NG \n");
}

void arctan(int c[k100], int p, int q, int flag)
{
       int d,e;
       int a[k100];
       int b[k100];
       logical check(int a[k100]);
       d=3;
       e=q*q;
       init( a, p, q );
       clear( c );
       if( flag == 0 ) {
         prsub( c,a );
         flag=1;
       }
       else if( flag == 1 ) {
         pradd( c,a );
         flag=0;
       }
       else {
         puts(" error ");
         exit(1);
       }
l10:   ;
         prdiv( a, a, e );
         if( check( a ) ) goto l20;
         prdiv( b, a, d );
         d=d+2;
         if( flag == 0 ) {
           prsub( c,b );
           flag=1;
         }
         else {
           pradd( c,b );
           flag=0;
         }
       goto l10;
l20:   ;
}
void clear(int c[k100])
{
       int i;
       for(i=0;i<k100;i++) c[i] = 0;
}
void init(int a[k100], int p, int q)
{
       int s,i;
       i=0 ;
l10:   ;
         s = p/q;
         if( s!=0 ) {
           a[i]=s;
           p=(p-s*q)*1000;
         }
         else {
           a[i]=s;
           p=p*1000;
         }
         i=i+1;
       if( i < k100) goto l10;
}
void pradd(int c[k100], int a[k100])
{
       int i,carry,n;
       carry=0;
       for(i=k100-1;i>=0;i--) {
         n=c[i]+a[i]+carry;
         if( n >= 1000 ) {
           if( n >= 2000 ) {
             printf (" ERROR OCCUR IN ADD N= %d \n",n);
             exit(1);
           }
           n=n-1000;
           c[i]=n;
           carry=1;
         }
         else {
           c[i]=n;
           carry=0;
         }
       }
l10:   ;
       if( carry != 0 ) {
         puts(" OVER FLOW IN ADD ");
         exit(1);
       }
}
void prsub(int c[k100], int a[k100])
{
       int i,n,carry;
       carry=0;
       for(i=k100-1;i>=0;i--) {
         n=c[i]-a[i]-carry;
         if( n < 0 ) {
           if( n < -1000 ) {
             printf("  error occur in sub n=%d \n",n);
             exit(1);
           }
           n=n+1000;
           c[i]=n;
           carry=1;
         }
         else {
           c[i]=n;
           carry=0;
         }
       }
l10:   ;
}
 void prmul(int a[k100], int d)
 {
       int s;
       int i,carry;
       if( d >= 1000 ) {
         printf(" input data error mul d=%d",d);
         exit(1);
       }
       carry=0;
       for( i=k100-1;i>=0;i--) {
         s=a[i]*d+carry;
         if( s >= 1000 ) {
           a[i]=s%1000;
           carry=s/1000;
           if( s >=  1000000 ) {
             printf("error occur in mul s=%d",s);
             exit(1);
           }
         }
         else  {
           a[i]=s;
           carry=0;
         }
       }
l10:   ;
       if( carry != 0 ) {
         puts(" over flow in mult ");
         exit(1);
       }
}
void prdiv(int b[k100], int a[k100], int d)
{
       int i,s,h,j;
       i=0;
       h=a[i];
       if( d==0 ) goto l20;
l10:   ;
         s=h/d;
         if( i+1 >= k100 ) {
           j=0;
         }
         else {
           j=a[i+1];
         }
         b[i]=s;
         if( s != 0 ) {
           h=(h%d)*1000+j;
         }
         else {
           h=h*1000+j;
         }
       i=i+1;
       if( i <  k100 ) goto l10;
       return;
l20:   ;
       puts(" ERROR OCCUR IN ZERO DIV ");
}
logical check(int a[k100])
{
       int i;
       for(i=0;i<k100;i++) {
         if( a[i] != 0 ) {
           return false;
         }
       }
       return true;
}
void prt(int n[k100])
{
  int i;
  for(i=0;i<k100;i=i+1) {
    printf("%03.3d",n[i]);
  }
  printf("\n");
  printf("\n");
}
