
#include <stdio.h>
#include <complex.h>

void sub0(double _Complex a)
{
  double _Complex b;

  b = conj(a);

  if (creal(b) == 50.0 && cimag(b) == -3.0){
    ;
  }else{
    printf("NG0 (%f,%f)\n",creal(b),cimag(b));
  }
  return;
}

void sub1(int i1,double _Complex a)
{
  double _Complex b;

  if( i1 != 1 ) {
    printf("%d\n",i1);
    puts("NG");
  }

  b = conj(a);

  if (creal(b) == 50.0 && cimag(b) == -3.0){
    ;
  }else{
    printf("NG1 (%f,%f)\n",creal(b),cimag(b));
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
    printf("NG2 (%f,%f)\n",creal(b),cimag(b));
  }
  return;
}

void sub3(int i1,int i2,int i3,double _Complex a)
{
  double _Complex b;

  if( i1 != 1 || i2 != 2 || i3 != 3 ) {
    puts("NG");
  }

  b = conj(a);

  if (creal(b) == 50.0 && cimag(b) == -3.0){
    ;
  }else{
    printf("NG3 (%f,%f)\n",creal(b),cimag(b));
  }
  return;
}

void sub4(int i1,int i2,int i3,int i4,double _Complex a)
{
  double _Complex b;

  if( i1 != 1 || i2 != 2 || i3 != 3 || i4 != 4 ) {
    puts("NG");
  }

  b = conj(a);

  if (creal(b) == 50.0 && cimag(b) == -3.0){
    ;
  }else{
    printf("NG4 (%f,%f)\n",creal(b),cimag(b));
  }
  return;
}

void sub5(int i1,int i2,int i3,int i4,int i5,double _Complex a)
{
  double _Complex b;

  if( i1 != 1 || i2 != 2 || i3 != 3 || i4 != 4 || i5 != 5 ) {
    puts("NG");
  }

  b = conj(a);

  if (creal(b) == 50.0 && cimag(b) == -3.0){
    ;
  }else{
    printf("NG5 (%f,%f)\n",creal(b),cimag(b));
  }
  return;
}

void sub6(int i1,int i2,int i3,int i4,int i5,int i6,double _Complex a)
{
  double _Complex b;

  if( i1 != 1 || i2 != 2 || i3 != 3 || i4 != 4 || i5 != 5 || i6 != 6 ) {
    puts("NG");
  }

  b = conj(a);

  if (creal(b) == 50.0 && cimag(b) == -3.0){
    ;
  }else{
    printf("NG6 (%f,%f)\n",creal(b),cimag(b));
  }
  return;
}

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
int main()
{
  sub0 (50.000 + 3.000i);
  sub1 (1,50.000 + 3.000i);
  sub2 (1,2,50.000 + 3.000i);
  sub3 (1,2,3,50.000 + 3.000i);
  sub4 (1,2,3,4,50.000 + 3.000i);
  sub5 (1,2,3,4,5,50.000 + 3.000i);
  sub6 (1,2,3,4,5,6,50.000 + 3.000i);
  sub7 (1,2,3,4,5,6,7,50.000 + 3.000i);
  sub8 (1,2,3,4,5,6,7,8,50.000 + 3.000i);

  puts("PASS");
}
