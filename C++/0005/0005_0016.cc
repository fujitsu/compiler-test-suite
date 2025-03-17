#if __cplusplus
extern "C" int printf(const char *, ...);
#else
extern int printf(const char *, ...);
#endif

int foo1() {
  
  return 1;
}
int foo2() {
  
  return 2;
}

int main() {
  int x = 0, y = 0, z = 0;
#define FOO  foo1
#pragma push_macro("FOO")
  x = FOO();  
#undef FOO
#define FOO  foo2
  y = FOO();  
#pragma pop_macro("FOO")
  z = FOO();  

  if (x == 1 &&
      y == 2 &&
      z == 1
            ) {
    printf("OK\n");
  }
  else {
    printf("NG:x=%d, y=%d, z=%d\n", x, y, z);
  }
  return 0;
}
