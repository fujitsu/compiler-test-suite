
extern int func();
#if MULTI_SEC 
extern int func2();
#endif 
extern int printf(const char *, ...);

int main() {
  int i;
#if MULTI_SEC 
  int j;
#endif 

  i = func();
#if MULTI_SEC 
  j = func2();
  if (i == 10 && j == 500) {
    printf("OK\n");
  }
  else {
    printf("NG: i=%d, j=%d\n", i, j);
  }
#else 
  if (i == 10) {
    printf("OK\n");
  }
  else {
    printf("NG: i=%d\n", i);
  }
#endif 
  return 0;
}
