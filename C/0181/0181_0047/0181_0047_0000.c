



 
struct struct1;

extern int func(struct struct1 *stp);
#if MULTI_SEC 
#if ARG_S2
extern int func2(struct struct1 *stp);
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
  struct struct1 *stp;

  i = func(stp);
#if MULTI_SEC 
#if ARG_S2
  j = func2(stp);
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
