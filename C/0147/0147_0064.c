
#include <stdio.h>
#include <complex.h>

void sub1(int i1,double _Complex a)
{
  double _Complex b;

  if( i1 != 1 ) {
    puts("NG");
  }

  b = conj(a);

  if (creal(b) == 50.0 && cimag(b) == -3.0){
    ;
  }else{
    printf("NG7 (%f,%f)\n",creal(b),cimag(b));
  }
  return;
}

void sub2(int i1,int i2,double _Complex a)
{
  double _Complex b;

  if( i1 != 1 || i2 != 2 ) {
    puts("NG");
  }

  b = conj(a);

  if (creal(b) == 50.0 && cimag(b) == -3.0){
    ;   
  }else{
    printf("NG8 (%f,%f)\n",creal(b),cimag(b));
  }
  return;
}

struct TAG {
  int pad_for_misalign;
  double _Complex arrary[8];
};

const struct TAG g_array = {
  0.0,           
  50.000 + 3.000i,
  50.000 + 3.000i,
  50.000 + 3.000i,
  50.000 + 3.000i
};
int main()
{
  int i,n = 4;
  const struct TAG a_array = {
    0.0,        
    50.000 + 3.000i,
    50.000 + 3.000i,
    50.000 + 3.000i,
    50.000 + 3.000i
  };

  const struct TAG s_array = {
    0.0,       
    50.000 + 3.000i,
    50.000 + 3.000i,
    50.000 + 3.000i,
    50.000 + 3.000i
  };

  for(i=0;i<n;i++) {
    sub1 (1,a_array.arrary[i]);
    sub2 (1,2,a_array.arrary[i]);
    sub1 (1,g_array.arrary[i]);
    sub2 (1,2,g_array.arrary[i]);
    sub1 (1,s_array.arrary[i]);
    sub2 (1,2,s_array.arrary[i]);
  }

  puts("PASS");
}
