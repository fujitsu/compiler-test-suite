#include <stdio.h>
#include <math.h>

#define n 20

static void ini0();
static void ini2();
static void test();
static void check(int *flag);

 double a[20],b[20],c[20];
 double  d ;

int main()
{
 int  flag;

  ini0();
  test();
  check(&flag);
  if (flag == 0) {
    printf(" test-1 ok \n");
  }else{
    printf(" test-1 ng \n");
  }
  d = 0.0;
  ini2();
  test();
  check(&flag);
  if (flag == 0) {
    printf(" test-2 ok \n");
  }else{
    printf(" test-2 ng \n");
  }
  d = 0.7;
  ini2();
  test();
  check(&flag);
  if (flag == 0) {
    printf(" test-3 ok \n");
  }else{
    printf(" test-3 ng \n");
  }
  d = 1.5;
  ini2();
  test();
  check(&flag);
  if (flag == 0) {
    printf(" test-4 ok \n");
  }else{
    printf(" test-4 ng \n");
  }
  d = 1e5;
  ini2();
  test();
  check(&flag);
  if (flag == 0) {
    printf(" test-5 ok \n");
  }else{
    printf(" test-5 ng \n");
  }
  d = -0.01;
  ini2();
  test();
  check(&flag);
  if (flag == 0) {
    printf(" test-6 ok \n");
  }else{
    printf(" test-6 ng \n");
  }
  d = -1.5;
  ini2();
  test(c);
  check(&flag);
  if (flag == 0) {
    printf(" test-7 ok \n");
  }else{
    printf(" test-7 ng \n");
  }
  d = -1e5;
  ini2();
  test();
  check(&flag);
  if (flag == 0) {
    printf(" test-8 ok \n");
  }else{
    printf(" test-8 ng \n");
  }
  d = 1e-5;
  ini2();
  test();
  check(&flag);
  if (flag == 0) {
    printf(" test-9 ok \n");
  }else{
    printf(" test-9 ng \n");
  }
  d = 1e-310;
  ini2();
  test();
  check(&flag);
  if (flag == 0) {
    printf(" test-10 ok \n");
  }else{
    printf(" test-10 ng \n");
  }
  return 0;
}

static void ini0()
{
 
  int i;
  for (i=0;i<n;i++) {
    a[i] = (double)i;
  }
  return;
}
static void ini2()
{
   int i;
   for (i=0;i<n;i++) {
     a[i] = d;
   }
 }
static void test()
{
  int i;
  for (i=0;i<n;i++) {
    b[i] = atan(a[i]);
  }
#pragma clang loop vectorize(disable)
  for (i=0;i < n; i++) {
    c[i] = atan(a[i]);
  }
 }
static void check(int *flag)
{
  int i;
  *flag =0;
  for (i=0;i < n; i++) {
    if ((fabs((b[i] - c[i]) / b[i])) > 1.0E-15) {
      *flag = *flag +1;
      printf(" b c %f %f \n",b[i],c[i]);
    }
  }
}
