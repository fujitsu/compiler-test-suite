#include <stdio.h>
#include <math.h>

#define n 20

static void ini0();
static void ini2();
static void test();
static void check();

double a[20],b[n],c[n],d[n],e[n];;
 double  dd ;
int flag;

int main()
{
 union {long long int l;double d;} nan  ={0x7ff8000000000000LL}; 
 union {long long int l;double d;} inf  ={0x7ff0000000000000LL}; 
 union {long long int l;double d;} mzero={0x8000000000000000LL}; 


  ini0();
  test();
  check();
  if (flag == 0) {
    printf(" test-1 ok \n");
  }else{
    printf(" test-1 ng \n");
  }
  dd = 0.0;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-2 ok \n");
  }else{
    printf(" test-2 ng \n");
  }
  dd = 0.5;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-3 ok \n");
  }else{
    printf(" test-3 ng \n");
  }
  dd = 3.1415;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-4 ok \n");
  }else{
    printf(" test-4 ng \n");
  }
  dd = -0.5;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-5 ok \n");
  }else{
    printf(" test-5 ng \n");
  }
  dd = -1.0;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-6 ok \n");
  }else{
    printf(" test-6 ng \n");
  }
  dd = -2.0;
  ini2();
  test(c);
  check();
  if (flag == 0) {
    printf(" test-7 ok \n");
  }else{
    printf(" test-7 ng \n");
  }
  dd = -3.1415;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-8 ok \n");
  }else{
    printf(" test-8 ng \n");
  }
  dd = 100.0;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-9 ok \n");
  }else{
    printf(" test-9 ng \n");
  }
  dd = -20.0;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-10 ok \n");
  }else{
    printf(" test-10 ng \n");
  }
  dd = -20.0;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-11 ok \n");
  }else{
    printf(" test-11 ng \n");
  }
  dd = -100.0;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-12 ok \n");
  }else{
    printf(" test-12 ng \n");
  }
  dd = 1e10;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-13 ok \n");
  }else{
    printf(" test-13 ng \n");
  }
  dd = -1e10;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-14 ok \n");
  }else{
    printf(" test-14 ng \n");
  }
  dd = -1e308;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-15 ok \n");
  }else{
    printf(" test-15 ng \n");
  }
  dd = 0x8000000000000000LL;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-16 ok \n");
  }else{
    printf(" test-16 ng \n");
  }
  dd = mzero.d;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-17 ok \n");
  }else{
    printf(" test-17 ng \n");
  }
  dd = nan.d;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-18 ok \n");
  }else{
    printf(" test-18 ng \n");
  }
  dd = -nan.d;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-19 ok \n");
  }else{
    printf(" test-19 ng \n");
  }
  dd = inf.d;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-20 ok \n");
  }else{
    printf(" test-20 ng \n");
  }
  dd = -inf.d;
  ini2();
  test();
  check();
  if (flag == 0) {
    printf(" test-21 ok \n");
  }else{
    printf(" test-21 ng \n");
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
     a[i] = dd;
   }
 }
static void test()
{
  int i;
  for (i=0;i<n;i++) {
    b[i] = cos(a[i]);
    c[i] = sin(a[i]);
  }
#pragma clang loop vectorize(disable)
  for (i=0;i < n; i++) {
    d[i] = cos(a[i]);
    e[i] = sin(a[i]);
  }
 }
static void check()
{
  int i;
  flag =0;
  for (i=0;i < n; i++) {
    if ((fabs((b[i] - d[i]) / b[i])) > 1.0E-15) {
      flag = flag +1;
      printf(" b d %f %f \n",b[i],d[i]);
    }
    if ((fabs((c[i] - e[i]) / c[i])) > 1.0E-15) {
      flag = flag +1;
       printf(" c e %f %f \n",c[i],e[i]);
    }
  }
}
