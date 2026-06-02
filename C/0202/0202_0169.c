
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
  int i = 0;
  while(i<num) {
    res1 = test_call1(num);
    res2 = test_call2(num);
    res3 = test_call3(num);
    i++;
  }
  return res1 + res2 + res3;
}
int test2(int num) {
  int res1 = 0, res2 = 0, res3 = 0;
  int i = 0;
  do {
    res1 = test_call1(num);
    res2 = test_call2(num);
    res3 = test_call3(num);
    i++;
   } while (i<num) ;
  return res1 + res2 + res3;
}

int main()
{
  test1(10);
  test2(20);
  return 0;
}

int test_call1(int i) { return i; }
int test_call2(int i) { return i; }
int test_call3(int i) { return i; }
