
extern int test_call1(int);
extern int test_call2(int);
extern int test_call3(int);

#if !defined(AAA)
void test_omp() {
  int i;
#if (defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L)
  for(int i=0;i<1;i++) {
#else
  for(i=0;i<1;i++) {
#endif
  }
  return;
}
#endif

int test1(int num) {
  int res1 = 0, res2 = 0, res3 = 0;
  double i[1];
#if (defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L)
  for(double i[1]={0};i[0]<(double)num;i[0]++) {
#else
  for(i[0]=0;i[0]<(double)num;i[0]++) {
#endif
    res1 = test_call1(num);
    res2 = test_call2(num);
    res3 = test_call3(num);
  }
  return res1 + res2 + res3;
}

struct array {
  long l;
} ;
int test2(int num) {
  int res1 = 0, res2 = 0, res3 = 0;
  struct array L;
#if (defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L)
  for(struct array L={1};L.l<num;L.l++) {
#else
  for(L.l=1;L.l<num;L.l++) {
#endif
    res1 = test_call1(num);
    res2 = test_call2(num);
    res3 = test_call3(num);
  }
  return res1 + res2 + res3;
}

union uni {
  long l;
  int  i;
} ;
int test3(int num) {
  int res1 = 0, res2 = 0, res3 = 0;
  union uni U;
#if (defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L)
  for(union uni U={0};U.i<num;U.i++) {
#else
  for(U.i=0;U.i<num;U.i++) {
#endif
    res1 = test_call1(num);
    res2 = test_call2(num);
    res3 = test_call3(num);
  }
  return res1 + res2 + res3;
}

int main()
{
  test1(10);
  test2(10);
  test3(10);
  return 0;
}

int test_call1(int i) { return i; }
int test_call2(int i) { return i; }
int test_call3(int i) { return i; }
