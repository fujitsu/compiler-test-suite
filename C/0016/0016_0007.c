#include <stdio.h>
#include <complex.h>

void sub1(long double _Complex a[], long double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = (3.0L + 2.0Li) + (4.0L + 5.0Li) + b[i];
  }
}

void sub2(long double _Complex a[], long double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = (3.0L + 2.0Li) - (4.0L + 5.0Li) + b[i];
  }
}

void sub3(long double _Complex a[], long double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = (3.0L + 2.0Li) * (4.0L + 5.0Li) + b[i];
  }
}

void sub4(long double _Complex a[], long double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = (3.0L + 2.0Li) / (4.0L + 5.0Li) + b[i];
  }
}

void sub5(long double _Complex a[], long double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + (3.0L + 2.0Li) + (4.0L + 5.0Li); 
  }
}

void sub6(long double _Complex a[], long double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + (3.0L +2.0Li) - (4.0L + 5.0Li) ;
  }
}

void sub7(long double _Complex a[], long double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + (3.0L + 2.0Li) * (4.0L + 5.0Li); 
  }
}

void sub8(long double _Complex a[], long double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + (3.0L + 2.0Li) / (4.0L + 5.0Li); 
  }
}

long double _Complex csuml(long double _Complex elm[], int index) {
  int i;
  long double _Complex ans;
  
  ans = 0.0L + 0.0Li; 
  for (i=0; i<index; i++) {
    ans = ans + elm[i]; 
  }
  return ans;
}
int main()
{
  long double _Complex  a[5], b[5];
  int loop_size,i;

  loop_size=5;
  for (i=0; i<loop_size; i++){
    a[i] = 0;
    b[i]  = (i+1) + (i+2) * I;
  }

  sub1(a,b,loop_size);
  if((long int)(cabsl(csuml(a,loop_size)))==74) {
    printf(" sub1 : OK\n");
  }else{
    printf(" sub1 : NG %ld != 74\n",(long int)(cabsl(csuml(a,loop_size))));
  }

  sub2(a,b,loop_size);
  if((long int)(cabsl(csuml(a,loop_size)))==11) {
    printf(" sub2 : OK\n");
  }else{
    printf(" sub2 : NG %ld != 11\n",(long int)(cabsl(csuml(a,loop_size))));
  }

  sub3(a,b,loop_size);
  if((long int)(cabsl(csuml(a,loop_size)))==137) {
    printf(" sub3 : OK\n");
  }else{
    printf(" sub3 : NG %ld != 137\n",(long int)(cabsl(csuml(a,loop_size))));
  }

  sub4(a,b,loop_size);
  if((long int)(cabsl(csuml(a,loop_size)))==26) {
    printf(" sub4 : OK\n");
  }else{
    printf(" sub4 : NG %ld != 26\n",(long int)(cabsl(csuml(a,loop_size))));
  }
  
  sub5(a,b,loop_size);
  if((long int)(cabsl(csuml(a,loop_size)))==74) {
    printf(" sub5 : OK\n");
  }else{
    printf(" sub5 : NG %ld != 74\n",(long int)(cabsl(csuml(a,loop_size))));
  }

  sub6(a,b,loop_size);
  if((long int)(cabsl(csuml(a,loop_size)))==11) {
    printf(" sub6 : OK\n");
  }else{
    printf(" sub6 : NG %ld != 11\n",(long int)(cabsl(csuml(a,loop_size))));
  }

  sub7(a,b,loop_size);
  if((long int)(cabsl(csuml(a,loop_size)))==137) {
    printf(" sub7 : OK\n");
  }else{
    printf(" sub7 : NG %ld != 137\n",(long int)(cabsl(csuml(a,loop_size))));
  }

  sub8(a,b,loop_size);
  if((long int)(cabsl(csuml(a,loop_size)))==26) {
    printf(" sub8 : OK\n");
  }else{
    printf(" sub8 : NG %ld != 26\n",(long int)(cabsl(csuml(a,loop_size))));
  }

}
