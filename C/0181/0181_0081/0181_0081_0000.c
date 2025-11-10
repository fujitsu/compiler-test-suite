



 
union union1;

extern int func(union union1 *up);
#if MULTI_SEC 
#if ARG_S2
extern int func2(union union1 *up);
#else 
extern int func2();
#endif 
#endif 

extern int printf(const char *, ...);

int main() {
  int i;
#if MULTI_SEC 
  int j;
#endif 
  union union1 *up;

  i = func(up);
#if MULTI_SEC 
#if ARG_S2
  j = func2(up);
#else 
  j = func2();
#endif 
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
