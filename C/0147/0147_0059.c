
#include <stdio.h>
#include <complex.h>

void sub7(int i1,int i2,int i3,int i4,int i5,int i6,int i7,double _Complex a)
{
  double _Complex b;

  if( i1 != 1 || i2 != 2 || i3 != 3 || i4 != 4 ||
      i5 != 5 || i6 != 6 || i7 != 7 ) {
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

void sub8(int i1,int i2,int i3,int i4,int i5,int i6,int i7,int i8,double _Complex a)
{
  double _Complex b;

  if( i1 != 1 || i2 != 2 || i3 != 3 || i4 != 4 ||
      i5 != 5 || i6 != 6 || i7 != 7 || i8 != 8 ) {
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

double _Complex g_array[] = {
  50.000 + 3.000i,
  50.000 + 3.000i,
  50.000 + 3.000i,
  50.000 + 3.000i
};
int main()
{
  int i,n = 4;
  double _Complex a_array[] = {
    50.000 + 3.000i,
    50.000 + 3.000i,
    50.000 + 3.000i,
    50.000 + 3.000i
  };

  static double _Complex s_array[] = {
    50.000 + 3.000i,
    50.000 + 3.000i,
    50.000 + 3.000i,
    50.000 + 3.000i
  };

  sub7 (1,2,3,4,5,6,7,conj(50.000 + -3.000i));
  sub8 (1,2,3,4,5,6,7,8,conj(50.000 + -3.000i));

  for(i=0;i<n;i++) {
    sub7 (1,2,3,4,5,6,7,a_array[i]);
    sub8 (1,2,3,4,5,6,7,8,a_array[i]);
    sub7 (1,2,3,4,5,6,7,s_array[i]);
    sub8 (1,2,3,4,5,6,7,8,s_array[i]);
    sub7 (1,2,3,4,5,6,7,g_array[i]);
    sub8 (1,2,3,4,5,6,7,8,g_array[i]);
  }

  puts("PASS");
}
