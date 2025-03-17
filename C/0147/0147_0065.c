
#include <stdio.h>
#include <complex.h>

void sub1(int i1,double _Complex a)
{
  double _Complex b = a;

  if( i1 != 1 ) {
    puts("NG");
  }

  if (creal(b) == 50.0 && cimag(b) == -3.0){
    ;
  }else{
    printf("NG7 (%f,%f)\n",creal(b),cimag(b));
  }
  return;
}

void sub2(int i1,int i2,double _Complex a)
{
  double _Complex b = a;

  if( i1 != 1 || i2 != 2 ) {
    puts("NG");
  }

  if (creal(b) == 50.0 && cimag(b) == -3.0){
    ;   
  }else{
    printf("NG8 (%f,%f)\n",creal(b),cimag(b));
  }
  return;
}

struct TAG {
  int pad_for_misalign;
  double _Complex arrary[4];
};

const struct TAG g_array = {
  0.0,           
  30.000 + -4.000i,
  30.000 + -4.000i,
  30.000 + -4.000i,
  30.000 + -4.000i
};
int main()
{
  int i,n = 4;
  double _Complex ans[4];

  const struct TAG a_array = {
    0.0,        
    30.000 + -4.000i,
    30.000 + -4.000i,
    30.000 + -4.000i,
    30.000 + -4.000i
  };

  const struct TAG s_array = {
    0.0,       
    30.000 + -4.000i,
    30.000 + -4.000i,
    30.000 + -4.000i,
    30.000 + -4.000i
  };

  for(i=0;i<n;i++) {
    ans[i] = (20.000 + 1.000i) + (a_array.arrary[i]);
  }

  for(i=0;i<n;i++) {
    sub1 (1,ans[i]);
    sub2 (1,2,ans[i]);
  }

  for(i=0;i<n;i++) {
    ans[i] = (20.000 + 1.000i) + (g_array.arrary[i]);
  }

  for(i=0;i<n;i++) {
    sub1 (1,ans[i]);
    sub2 (1,2,ans[i]);
  }

  for(i=0;i<n;i++) {
    ans[i] = (20.000 + 1.000i) + (s_array.arrary[i]);
  }

  for(i=0;i<n;i++) {
    sub1 (1,ans[i]);
    sub2 (1,2,ans[i]);
  }

  puts("PASS");
}
