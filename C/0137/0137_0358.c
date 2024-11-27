#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int k=2;
int main( ) {
  void subi1( ),subi3( ),subi4( ),subi5( ),(*fp)( );
  int subi2( ),(*ff)();
  extern void sube1( );
  extern int  sube2( );
  void f1000( ),f2000( ),f3000( );
  static void (*sub4[ ])( )={f1000,f2000,f3000};
  int i,j,a,b,c,d;
    subi1( );
  i=2;
  j=subi2(i);
             if (j==4) printf("**dpmk2017-(2)** OK\n"); 
             else      printf("**dpmk2017-(2)** NG\n"); 
    sube1( );
  d=sube2(k);
             if (j==4) printf("**dpmk2017-(4)** OK\n"); 
             else      printf("**dpmk2017-(4)** NG\n"); 
  fp=subi4;
  (*fp)( );
  ff=subi2;
  b=(*ff)(j);
             if (b==16) printf("**dpmk2017-(6)** OK\n"); 
             else       printf("**dpmk2017-(6)** NG\n"); 
  a=b;
  c=d;
  subi3(a,a+c,subi2(i));
  subi5(b,b+c,sube2(i));
  for (i=0; i<3; i++) sub4[i]( );
exit (0);
}
void subi1( ) { printf("**dpmk2017-(1)** OK\n"); }
void subi4( ) { printf("**dpmk2017-(5)** OK\n"); }
void subi3(i,j,k ) int i,j,k;{
                if (i==16,j==20,k==4) printf("**dpmk2017-(7)** OK\n"); 
                else                  printf("**dpmk2017-(7)** NG i=%d,j=%d,k=%d\n",i,j,k); }
void subi5(i,j,k ) int i,j,k;{
                if (i==16,j==20,k==4) printf("**dpmk2017-(8)** OK\n");
                else                  printf("**dpmk2017-(8)** NG i=%d,j=%d,k=%d\n",i,j,k); }
int  subi2(i) int i;{return(i*i);}
void f1000( ) { printf("**dpmk2017-(9)** OK\n"); }
void f2000( ) { printf("**dpmk2017-(10)** OK\n"); }
void f3000( ) { printf("**dpmk2017-(11)** OK\n"); }
  
void sube1( ) { printf("**dpmk2017-(3)** OK\n"); }
int  sube2(i) int i;{return(i*i);}
