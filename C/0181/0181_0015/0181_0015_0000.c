
extern int func();
#if MULTI_SEC 
extern int func2();
#endif 
extern int printf(const char *, ...);

enum enum1 {
  e0,
  e1,
  e2,
  e_last = 10
};

int main() {
  int i;
#if MULTI_SEC 
  int j;
#endif 
  enum enum1 en1;

  en1 = e_last;
  i = func();
#if MULTI_SEC 
#if ARG_S2
  j = func2(&en1);
#else 
  j = func2();
#endif 
  if (i == en1 && j == en1) {
    printf("OK\n");
  }
  else {
    printf("NG: i=%d, j=%d\n", i, j);
  }
#else 
  if (i == en1) {
    printf("OK\n");
  }
  else {
    printf("NG: i=%d\n", i);
  }
#endif 
  return 0;
}
