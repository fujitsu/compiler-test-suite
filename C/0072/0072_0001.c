#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int write_i4 (char *s, long int *x, long int l, long int d);
int write_r8 (char *s, double *x, long int l, long int d);
int ini_r8 (double *x, long int l);
int write_r4 (char *s, float *x, long int l, long int d);
#define HLIST(i)    t.hlist[i-1]
#define IA1(i)      t.ia1[i-1]
#define IA2(i)      t.ia2[i-1]
#define RLIST(i)    t.rlist[i-1]
#define RA1(i)      t.ra1[i-1]
#define RA2(i)      t.ra2[i-1]
#define DA1(i)      t.da1[i-1]
#define DA2(i)      t.da2[i-1]
#define RAE1(i)     t.rae1[i-1]
#define RAE2(i,j)   t.rae2[i-1][j-1]
#define X(i)        x[i-1]
int 
fnk00xX (void) {
      long int    i,j,is1=0,iinv1,ix=3;
      float       rs1=0.0,rs2;
      double      ds1,ds2;

      struct st{
	short int hlist[10];
	long  int ia1[10],ia2[10];
	float     rlist[10],ra1[10],ra2[10];
	double    da1[10],da2[10];
	float     rae2[5][5];
	float     rae1[25];
      } t;
      
      for(i=0;i<10;i++){
        t.hlist[i]=i+1;
        t.ia1[i]=3;
        t.ia2[i]=4;
        t.rlist[i]=i+1;
        t.ra1[i]=5.0;
        t.ra2[i]=6.0;
        t.da1[i]=8.0;
        t.da2[i]=9.0;
      }
      for(i=0;i<25;i++){
        t.rae1[i]=7.0;
      }

      printf("PROGRAM FKF00xx\n");

      for( i=1;i<=5;i+=1){ 
      IA1(ix)=i;
      IA1(i)=IA1(i)+1;
      IA1(i+2)=IA1(i+1)+1;
      IA1(10)=IA1(10)+IA1(i);
      IA2(ix)=i;
      IA2(i)=IA2(i)+1;
      IA2(i+2)=IA2(i+1)+1;
      IA2(10)=IA2(10)+IA2(i);
L10:;;}
      printf("LOOP-10\n");
      write_i4("ia1=",t.ia1,10,1);
      write_i4("ia2=",t.ia2,10,1);

      for( j=1;j<=5;j+=1){ 
      for( i=1;i<=5;i+=1){ 
      RA1(ix)=i;
      RA1(i)=RA1(i)+1;
      RA1(i+2)=RA1(i+1)+1;
      RA1(10)=RA1(10)+RA1(i);
      RA2(ix)=i;
      RA2(i)=RA2(i)+1;
      RA2(i+2)=RA2(i+1)+1;
      RA2(10)=RA2(10)+RA2(i);
L16:;;}
      rs1=rs1+RA1(j)+RA2(j);
L15:;;}
      printf("LOOP-15\n");
      write_r4("ra1=",t.ra1,10,1);
      write_r4("ra2=",t.ra2,10,1);
      write_r4("rs1=",&rs1,1,1);


      iinv1=1;
      for( i=2;i<=6;i+=1){ 
      IA1(ix)=i;
      IA1(i)=IA1(HLIST(i))+1;
      IA1(HLIST(i)+2)=IA1(i+1)+1;
      IA2(HLIST(iinv1))=IA2(i)+IA1(iinv1);
      IA2(iinv1)=IA2(i-1)+1;
      iinv1=iinv1+1;
L20:;;}
      printf("LOOP-20\n");
      write_i4("ia1=",t.ia1,10,1);
      write_i4("ia2=",t.ia2,10,1);

      iinv1=1;
      for( i=2;i<=5;i+=1){ 
      IA1(ix)=i;
      IA1(i)=IA1(HLIST(i))+1;
      IA1(HLIST(i)+2)=IA1(i+1)+1;
      RA2(HLIST(iinv1))=RA2(i)+IA1(iinv1);
      RA2(iinv1)=RA2(i-1)+1;
      iinv1=iinv1+1;
L30:;;}
      printf("LOOP-30\n");
      write_i4("ia1=",t.ia1,10,1);
      write_r4("ia2=",t.ra2,10,1);

      iinv1=1;
      for( i=2;i<=5;i+=1){ 
      ini_r8(&t.da1,10);
      DA1(i)=DA1(i)+i;
      DA1(HLIST(i)+2)=DA1(i+1)+1;
      DA2(HLIST(i))=DA2(i)+DA1(iinv1);
      DA2(iinv1)=DA2(i-1)+1;
      iinv1=iinv1+1;
L40:;;}
      printf("LOOP-40\n");
      write_r8("da1=",t.da1,10,1);
      write_r8("da2=",t.da2,10,1);


      is1=0;
      rs1=0.0;
      ds1=0.0;
      ds2=0.0;
      for( i=1;i<=5;i+=1){ 
      RA1(i)=sqrt(RLIST(i));
      is1=is1+i;
      rs1=rs1+RA1(i);
      RA2(i)=pow(RLIST(i),1.0/3.0);
      ds1=ds1+RA2(i);
      ds2=ds2+pow(RA1(i),2.0);
      rs2=is1-ds2;
L50:;;}
      printf("LOOP-50\n");
      write_r4("rs1=",&rs1,1,1);
      write_r8("ds1=",&ds1,1,1);
      write_r4("rs2=",&rs2,1,1);

      is1=0;
      rs1=0.0;
      ds1=0.0;
      ds2=0.0;
      for( j=1;j<=4;j+=1){ 
      for( i=1;i<=4;i+=1){ 
      RAE1(i*5+j)=sqrt(RLIST(i+1));
      is1=is1+i;
      rs1=rs1+RAE1(i*5+j);
      RAE2(i+1,j+1)=pow(RLIST(i+1),1.0/3.0);
      ds1=ds1+RAE2(i+1,j+1);
      ds2=ds2+pow(RAE1(i+1),2.0);
      rs2=is1-ds2;
L60:;;}}
      printf("LOOP-60\n");
      write_r4("rs1=",&rs1,1,1);
      write_r8("ds1=",&ds1,1,1);
      write_r4("rs2=",&rs2,1,1);
      }
      int 
novrec (void) {
      long int    i,ix=3;
      struct st2{
          long int    ia1[10];
          long int    ia2[10];
      } t;
      for(i=0;i<10;i++){
        t.ia1[i]=3;
        t.ia2[i]=4;
      }
      printf("PROGRAM NOVREC\n");
      for( i=1;i<=5;i+=1){ 
      IA1(ix)=i;
      IA1(i)=IA1(i)+1;
      IA1(i+1)=IA1(i+2)+1;
L10:;;}
      printf("LOOP-10\n");
      write_i4("ia1=",t.ia1,10,1);
      write_i4("ia2=",t.ia2,10,1);
      for( i=1;i<=5;i+=1){ 
      IA1(ix)=i;
      IA1(i)=IA1(i)+1;
      IA1(i+1)=IA1(i+2)+1;
      IA1(10)=IA1(10)+IA1(i);
L20:;;}
      printf("LOOP-20\n");
      write_i4("ia1=",t.ia1,10,1);
      write_i4("ia2=",t.ia2,10,1);
      for( i=1;i<=5;i+=1){ 
      IA1(ix)=i;
      IA1(i)=IA1(i)+1;
      IA1(i+1)=IA1(i+2)+1;
      IA2(ix)=i;
      IA2(i)=IA2(i)+1;
      IA2(i+1)=IA2(i+2)+1;
L30:;;}
      printf("LOOP-30\n");
      write_i4("ia1=",t.ia1,10,1);
      write_i4("ia2=",t.ia2,10,1);
      for( i=1;i<=5;i+=1){ 
      IA1(ix)=i;
      IA1(i)=IA1(i)+1;
      IA1(i+1)=IA1(i+2)+1;
      IA2(ix)=i;
      IA2(i)=IA2(i)+1;
      IA2(i+1)=IA2(i+2)+1;
L40:;;}
      printf("LOOP-40\n");
      write_i4("ia1=",t.ia1,10,1);
      write_i4("ia2=",t.ia2,10,1);
      }

      int 
ini_r8 (double *x, long int l){
      long int i;
      for( i=1;i<=l;i+=1){ 
      *x=i+0.7;
      x++;
L1:;;}
      }

      int 
write_i2 (char *s, short int *x, long int l, long int d){
      long int i,lc=0;
      printf("%s\n",s);
      for(i=1;i<=l/d;i++){
        printf(" %d",*x);
        if(++lc==5){printf("\n");lc=0;}
        x+=d;
        }
      printf("\n");
      }

      int 
write_i4 (char *s, long int *x, long int l, long int d){
      long int i,lc=0;
      printf("%s\n",s);
      for(i=1;i<=l/d;i++){
        printf(" %ld",*x);
        if(++lc==5){printf("\n");lc=0;}
        x+=d;
        }
      printf("\n");
      }

      int 
write_r4 (char *s, float *x, long int l, long int d){
      long int i,lc=0;
      printf("%s\n",s);
      for(i=1;i<=l/d;i++){
        printf(" %f",*x);
        if(++lc==5){printf("\n");lc=0;}
        x+=d;
        }
      printf("\n");
      }

      int 
write_r8 (char *s, double *x, long int l, long int d){
      long int i,lc=0;
      printf("%s\n",s);
      for(i=1;i<=l/d;i++){
        printf(" %g",*x);
        if(++lc==5){printf("\n");lc=0;}
        x+=d;
        }
      printf("\n");
      }

int 
main (void){
      fnk00xX();
      novrec();
exit (0);
      }

