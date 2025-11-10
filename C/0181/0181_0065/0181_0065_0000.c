



 
typedef int INT_ARRAY[2];

extern int func();
#if MULTI_SEC 
extern int func2();
#endif 

extern int printf(const char *, ...);

int main() {
  INT_ARRAY ia;
  int i;
#if MULTI_SEC 
  int j;
#endif 

  ia[0] = 10;
  ia[1] = 500;
  i = func();
#if MULTI_SEC 
  j = func2();
  if (i == ia[0] && j == ia[1]) {
    printf("OK\n");
  }
  else {
    printf("NG: i=%d, j=%d\n", i, j);
  }
#else 
  if (i == ia[0]) {
    printf("OK\n");
  }
  else {
    printf("NG: i=%d\n", i);
  }
#endif 
  return 0;
}
