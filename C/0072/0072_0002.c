#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int init_r4 (float x[], int n);
int write_i4 (char *s, int *x, int l, int d);
int write_r4 (char *s, float *x, int l, int d);
int init_i4 (int x[], int n);
int mi10 (void);
int mi09 (void);
int mi07 (void);
int mi06 (void);
int mi05 (void);
int mi03 (void);
int mi02 (void);
#define n1 10
#define n2 10
#define n3 10
#define n9 9
#define C(k,j,i)   t1.c[k-1][j-1][i-1]
#define D(k,j,i)   t1.d[k-1][j-1][i-1]
#define A3(k,j,i)  t2.a[k-1][j-1][i-1]
#define B3(k,j,i)  t2.b[k-1][j-1][i-1]
#define A2(j,i)    t3.e[j-1][i-1]
#define B2(j,i)    t3.f[j-1][i-1]
#define A5(m,l,k,j,i) t4.g[m-1][l-1][k-1][j-1][i-1]
#define x(i)       x[i-1]

struct st1 {
    float  c[n1][n2][n3],d[n1][n2][n3];
} t1;
int 
main (void) {
	struct st2 {
	  float a[n1][n2][n3],b[n1][n2][n3];
	} t2;
      
       int i,j,k;
      init_r4(&t2.b,1000);

      for( i=1;i<=10;i+=1){ 
        for( j=1;j<=10;j+=1){ 
          for( k=1;k<=10;k+=1){ 
            C(i,j,k) = 1;
            D(i,j,k) = 1;
L1:;;}}}

      C(1,1,1)=5.4321;
      for( k=1;k<=n3;k+=2){ 
      for( j=1;j<=n2;j+=2){ 
      for( i=1;i<=n3;i+=2){ 
       D(i,j,k)=C(1,1,1)+i+j+k;
       D(i+1,j+1,k+1)=D(i,j,k)+.00005;
L10:;;}}}

      mi02();
      mi03();
      mi05();
      mi06();
      mi07();
      mi09();
      mi10();

	exit(0);
      }


      int 
mi02 (void){
      struct st3 {
        float a[10][10][10],b[10][10][10];
      } t2;
      int i=1,j,k,n=1;
      init_i4(&t2.a,1000);
      init_i4(&t2.b,1000);
      init_r4(&t1.c,1000);
      exit(0);
	
      for( k=1;k<=10;k+=1){ 
      for( j=1;j<=10;j+=1){ 
        B3(i,j,k)=A3(i,j,k)+C(i,j,k);
      for( i=1;i<=10;i+=1){ 
        A3(i,j,k)=A3(i,j,k)+1;
L30:;;}
        i=n;
        C(i,j,k)=C(i,j,k)+A3(i,j,k);
L20:;;}
        j=n;
        B3(k,j,i)=2;
L10:;;}

      printf("SUB-MI02\n");
      write_i4("a=",t2.a,1000,20);
      write_i4("b=",t2.b,1000,20);
      write_r4("c=",t1.c,1000,20);
      return(0);
      }


      int 
mi03 (void){
      struct st4 {
        float e[10][10],f[10][10];
      } t3;
      int i,j;
      init_r4(&t3.e,100);
      init_r4(&t3.f,100);

      for( j=1;j<=10;j+=1){ 
      B2(1,j)=5;
      for( i=1;i<=10;i+=1){ 
      A2(i,j)=B2(i,j)+1;
L10:;;}}

      printf("SUB-MI03\n");
      write_r4("e=",&t3.e,100,10);
      write_r4("f=",&t3.f,100,10);
      return(0);
      }


      int 
mi05 (void){
      struct st5 {
        float e[10][10],f[10][10];
      } t3;
      int i,j,n=1;
      init_r4(&t1.d,100);
      init_r4(&t3.f,100);

      for( j=1;j<=10;j+=1){ 
      B2(1,j)=5;
      for( i=1;i<=10;i+=1){ 
      A2(i,j)=B2(i,j)+1;
L20:;;}
      i=n;
      B2(1,j)=A2(i,j)+3;
L10:;;}

      printf("SUB-MI05\n");
      write_r4("e=",&t1.d,100,10);
      write_r4("f=",&t3.f,100,10);
      return(0);
      }


      int 
mi06 (void){
      struct st6 {
        float e[10][10],f[10][10];
      } t3;
      int i,j,k;
      init_r4(&t3.e,100);
      init_r4(&t3.f,100);

      for( k=1;k<=10;k+=1){ 
       B2(1,k)=5;
       for( j=1;j<=10;j+=1){ 
        for( i=1;i<=10;i+=1){ 
         A2(i,j)=B2(i,j)+1;
L30:;;}
L20:;;}
       B2(1,j-1)=A2(k,j-1)+3;
L10:;;}

      printf("SUB-MI06\n");
      write_r4("e=",&t3.e,100,10);
      write_r4("f=",&t3.f,100,10);
      return(0);
      }


      int 
mi07 (void){
      struct st7 {
        float e[10][10],f[10][10];
      } t3;
      int i,j,k;
      init_r4(&t3.e,100);
      init_r4(&t3.f,100);

      for( k=1;k<=9;k+=1){ 
       B2(1,k)=5;
       for( i=1;i<=10;i+=1){ 
        for( j=1;j<=10;j+=1){ 
         A2(i,j)=B2(i,j)+1;
L30:;;}
L20:;;}
       B2(j-1,1)=A2(j-1,k)+3;
L10:;;}

      printf("SUB-MI07\n");
      write_r4("e=",&t3.e,100,10);
      write_r4("f=",&t3.f,100,10);
      return(0);
      }


      int 
mi09 (void){
      struct st8 {
        float g[5][5][5][5][5];
      } t4;
      int i1,i2,i3,i4,i5;
      init_r4(&t4.g,3125);

      for( i1=1;i1<=5;i1+=1){ 
      for( i2=2;i2<=4;i2+=1){ 
      for( i3=1;i3<=5;i3+=1){ 
      for( i4=1;i4<=5;i4+=1){ 
      for( i5=1;i5<=5;i5+=1){ 
       A5(i5,i4,i3,i2,i1)=A5(i5,i4,i3,i2,i1)*8.;
L10:;;}}}}}

      printf("SUB-MI09\n");
      write_r4("g=",&t4.g,1000,10);
      return(0);
      }


      int 
mi10 (void){
      struct st9 {
        float g[5][5][5][5][5];
      } t4;
      int i1,i2,i3,i4,i5;
      init_r4(&t4.g,3125);

      for( i5=1;i5<=5;i5+=1){ 
      for( i4=1;i4<=5;i4+=1){ 
      for( i3=1;i3<=5;i3+=1){ 
      for( i2=2;i2<=4;i2+=1){ 
      for( i1=1;i1<=5;i1+=1){ 
       A5(i5,i4,i3,i2,i1)=A5(i5,i4,i3,i2,i1)*8.;
L10:;;}}}}}

      printf("SUB-MI10\n");
      write_r4("g=",&t4.g,1000,10);
      return(0);
      }


int init_i4(int x[], int n){
       int i;

      for( i=1;i<=n;i+=1){ 
       x(i)=i;
 printf("x(%d)=%d\n",i,x(i));
      L10:;;}
      return(0);
      }


int init_r4(float x[], int n){
       int i;

      for( i=1;i<=n;i+=1){ 
       x(i)=i+.1;
L10:;;}
      return(0);
      }

int write_i4 (char *s, int *x, int l, int d){
       int i,lc=0;

      printf("%s\n",s);
      for(i=1;i<=l/d;i++){
        printf(" %d",*x);
        if(++lc==10){printf("\n");lc=0;}
        x+=d;
        }
      printf("\n");
      }

 int write_r4 (char *s, float *x, int l, int d){
       int i,lc=0;

      printf("%s\n",s);
      for(i=1;i<=l/d;i++){
        printf(" %f",*x);
        if(++lc==5){printf("\n");lc=0;}
        x+=d;
        }
      printf("\n");
      }

