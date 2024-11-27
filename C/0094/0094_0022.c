#include  <stdio.h>
int main(){
  int r18,result,i;
  int resultcnt,g_ispow( ),g_pow( );
  enum {p1=1,p2=2,p4=4,p8=8,p16=16,p32=32,p64=64,p128=128,p256=256} pow;
  for (resultcnt=0,r18=p1; r18 <= p256; r18++) {
    if ((result=1<<g_ispow(r18))==r18) { 
      switch(result) {
        case p1: i=1;
                 goto ok;
        case p2: i=2;
                 goto ok;
        case p4: i=3;
                 goto ok;
        case p8: i=4;
                 goto ok;
      }
      switch(result) {
        case p16: i=5;
                 goto ok;
        case p32: i=6;
                 goto ok;
        case p64: i=7;
                 goto ok;
        case p128: i=8;
                 goto ok;
        case p256: i=9;
                 goto ok;
        default:printf ("** \n"); 
                goto ng;
      }
ok:printf ("** \n",i);
    }
  }
ng:;
}
int g_ispow(p_const_value) int  p_const_value; {
  int   powresult,g_pow( );
  int             i;
  for (i=1; i<=8; i++) {
    powresult=g_pow(2,i);
    if (p_const_value==powresult)
      return(i);
    if (p_const_value< powresult)
      return(0);
  }
  return(0);
}  
int g_pow(p_base_value,p_exponent) int p_base_value,p_exponent; {
  int i,w_pow_value;
  for (w_pow_value=i=1; i <= p_exponent;i++)
    w_pow_value*=p_base_value;
  return(w_pow_value);
}
