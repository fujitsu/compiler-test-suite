#include <stdlib.h>
#include <math.h>
#include  <stdio.h>


int main(){
  long long int r18,result,i;
  long long int resultcnt,g_ispow( ),g_pow( );
  enum {p1=1,p2=2,p4=4,p8=8,
        p16=16,p32=32,p64=64,p128=128,p256=256} pow;
  for (resultcnt=0,r18=p1; r18 <= (long long int)p256; r18++) {
    if ((result=1LL<<g_ispow(r18))==r18) { 
      switch(result) {
        case p1: i=1LL;
                 goto ok;
        case p2: i=2LL;
                 goto ok;
        case p4: i=3LL;
                 goto ok;
        case p8: i=4LL;
                 goto ok;
      }
      switch(result) {
        case p16: i=5LL;
                 goto ok;
        case p32: i=6LL;
                 goto ok;
        case p64: i=7LL;
                 goto ok;
        case p128: i=8LL;
                 goto ok;
        case p256: i=9LL;
                 goto ok;
        default:printf ("**  ** NG\n"); 
                goto ng;
      }
ok:printf ("**  (%d) ** OK\n",(int)i);
    }
  }
ng:;
exit (0);
}

long long int g_ispow(p_const_value) long long int  p_const_value; {
  long long  int   powresult,g_pow( );
  long long int             i;
  for (i=1LL; i<=8LL; i++) {
    powresult=g_pow(2LL,i);
    if (p_const_value==powresult)
      return(i);
    if (p_const_value< powresult)
      return(0);
  }
  return(0);
}  

long long int g_pow(p_base_value,p_exponent) long long int p_base_value,p_exponent; {
  long long int i,w_pow_value;
  for (w_pow_value=i=1; i <= p_exponent;i++)
    w_pow_value*=p_base_value;
  return(w_pow_value);
}
