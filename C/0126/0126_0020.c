
#include <setjmp.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int SUB1();
int SUB();
int ADD();
jmp_buf env;
int a[10],b[10],c[10],i;
struct aaa {
   int ia;
   float ea;
   double da;
   unsigned int la;
  } a_table[20];
struct bbb {
   int ib;
   float eb;
   double db;
   unsigned int lb;
  } b_table[20];
struct ccc {
   int ic;
   float ec;
   double dc;
   unsigned int lc;
  } c_table[20];
void CALC()
   {
     for(i=0;i< 9;i++){
         a[i] = c[i] / b[i] * 2.5;
         c[i] = b[i+1] + 5.0 * 0.256;
         b[i] = a[i] * 6.0 / 3.0 * c[i];
       }
     for(i=0;i< 10;i++){
         a_table[i].ia = c_table[i].ic / b_table[i].ib * 2.5;
         c_table[i].dc = b_table[i].db + sin(a_table[i].da) * 1.235;
         b_table[i].eb = a_table[i].ea * 8.5 / 2.5 * c_table[i].ec;
       }
     for(i=10;i< 20;i++){
         a_table[i].da = c_table[i].dc - b_table[i].db + 3.5;
         c_table[i].ec = b_table[i].eb + cos(b_table[i].eb) * 2.351;
         b_table[i].ib = 2.0 * c_table[i].ic;
       }
     printf(" many \n");
     for(i=0;i< 10;i++){
       printf("a=%d b=%d c=%d\n",a[i],b[i],c[i]);
     }
     for(i=0;i< 20;i++){
       printf("ia=%d ib=%d ic=%d\n",a_table[i].ia,b_table[i].ib,
                                    c_table[i].ic);
       printf("ea=%12.5e eb=%12.5e ec=%12.5e\n",a_table[i].ea,
                                     b_table[i].eb,c_table[i].ec);
       printf("da=%g db=%g dc=%g\n",a_table[i].da,b_table[i].db,
                                    c_table[i].dc);
     }
   }
int main(){
   atexit(CALC);
   for(i=0;i< 10;i++){
     a[i] = 2;
     b[i] = 5;
     c[i] = 7;
   }
   for(i=0;i< 20;i++){
         a_table[i].ia = i+1 ;
         a_table[i].ea = i+2 ;
         a_table[i].la = i%2 ;
         a_table[i].da = i+1 ;
         b_table[i].ib = i+1 ;
         b_table[i].eb = i+2 ;
         b_table[i].lb = i%2 ;
         b_table[i].db = i+1 ;
         c_table[i].ic = i+1 ;
         c_table[i].ec = i+2 ;
         c_table[i].lc = i%2 ;
         c_table[i].dc = i+1 ;
   }

   if(setjmp(env) == 0){
      printf("*** SETJMP ***\n");
      ADD();
    }
    else{
      printf("*** LONGJMP ***\n");
    }
   SUB1();
 }
int ADD(){
  for(i=1;i< 10;i++){
    c[i-1] = a[i-1] + b[i-1];
    c_table[i-1].ic = (a[i-1] * a_table[i].ia) + b_table[i+1].ib;
    b_table[i+i].ib = (c[i-1+1] / c_table[i-1+1].ic) + a_table[i].ia;
  }
  for(i= -1;i< 9;i++) {
    a[i+1] = a_table[i+1].ia + c_table[i+1].ic;
    c_table[i+1].dc = a_table[i+1].da + (double)b_table[i+1].db;
    if(a_table[i+1].ia < 0) {
        a_table[i+1].la = 0;
      }
     else {
        a_table[i+1].la = 1;
      }
    if(b_table[i+1].ib < 0) {
        b_table[i+1].lb = 0;
      }
     else {
        b_table[i+1].lb = 1;
      }
    if(c_table[i+1].ic < 0) {
        c_table[i+1].lc = 0;
      }
     else {
        c_table[i+1].lc = 1;
      }
  }
  printf(" add \n");
  for(i=0;i< 10;i++){
    printf("a=%d b=%d c=%d\n",a[i],b[i],c[i]);
  }
  SUB();
  return 0;
 }
int SUB(){
   for(i=0;i< 10;i++){
     if(a_table[i].la == 1){
        a[i] = b[i] - c[i] * 1.0;
        a_table[i].ia = c_table[i].ic * 3 - b_table[i].ib;
        a_table[i].da = b_table[i].db / 2.0 - c_table[i].dc * 5.0;
      }
   }
   for(i=10;i< 20;i+=2){
      a_table[i].la = 1;
      a_table[i+1].la = 0;
   }
   printf(" sub \n");
   for(i=0;i< 20;i++){
     printf("ia=%d ib=%d ic=%d\n",a_table[i].ia,b_table[i].ib,
                                  c_table[i].ic);
     printf("ea=%12.5e eb=%12.5e ec=%12.5e\n",a_table[i].ea,
                                  b_table[i].eb,c_table[i].ec);
     printf("da=%g db=%g dc=%g\n",a_table[i].da,b_table[i].db,
                                  c_table[i].dc);
   }
   for(i=0;i< 10;i++){
     printf("a=%d b=%d c=%d\n",a[i],b[i],c[i]);
   }
   exit(0) ;
   longjmp(env,1);
 }
int SUB1(){
   for(i=0;i< 20;i++){
     if(b_table[i].lb == 1){
        b_table[i].ib = c_table[i].ic * 3 ;
        b_table[i].db = a_table[i].da / 3.0 + sin(c_table[i].dc);
        b_table[i].eb = a_table[i].ea / 4.0 + cos(c_table[i].ec * 5.0);
      }
   }
   for(i=0;i< 20;i++){
     if(c_table[i].lc == 1){
        c_table[i].ic = a_table[i].ia * 3;
        c_table[i].dc = a_table[i].da;
        c_table[i].ec = b_table[i].eb / 4.0;
      }
   }
   printf(" sub1 \n");
   for(i=0;i< 10;i++){
     printf("a=%d b=%d c=%d\n",a[i],b[i],c[i]);
   }
   for(i=0;i< 20;i++){
     printf("ia=%d ib=%d ic=%d\n",a_table[i].ia,b_table[i].ib,
                                  c_table[i].ic);
     printf("ea=%12.5e eb=%12.5e ec=%12.5e\n",a_table[i].ea,
                                  b_table[i].eb,c_table[i].ec);
     printf("da=%g db=%g dc=%g\n",a_table[i].da,b_table[i].db,
                                  c_table[i].dc);
   }
   exit(0);
 }
