



 
extern int func();
#if MULTI_SEC 
extern int func2();
#endif 
extern int printf(const char *, ...);

int main() {
#if MULTI_SEC 
  int i;
  int j;
  i = func();
  j = func2();
  if (i == 10 && j == 10) {
    printf("OK\n");
  }
  else {
    printf("NG: i=%d, j=%d\n", i, j);
  }
#else 
  int i;
  i = func();
  if (i == 10) {
    printf("OK\n");
  }
  else {
    printf("NG: i=%d\n", i);
  }
#endif 
  return 0;
}
