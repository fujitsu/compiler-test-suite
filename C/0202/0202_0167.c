
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
  int i;
#if (defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L)
  for(int i=0;i<num;i++) {
#else
  for(i=0;i<num;i++) {
#endif
    res1 = test_call1(num);
    res2 = test_call2(num);
    res3 = test_call3(num);
  }
  return res1 + res2 + res3;
}

int test2(int num) {
  int res1 = 0, res2 = 0, res3 = 0;
  char n[10];
  char * i;
#if (defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L)
  for(char * i=&n[0];i<&n[9];i++) {
#else
  for(i=&n[0];i<&n[9];i++) {
#endif
    res1 = test_call1(num);
    res2 = test_call2(num);
    res3 = test_call3(num);
  }
  return res1 + res2 + res3;
}

int test3(int num) {
  int res1 = 0, res2 = 0, res3 = 0;
  float i;
#if (defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L)
  for(float i=0;i<num;i++) {
#else
  for(i=0;i<num;i++) {
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
