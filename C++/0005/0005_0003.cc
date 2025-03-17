extern "C" int printf(const char *, ...);
struct D1 { ~D1() {} };
int g1() {
#if __EDG_VERSION__ >= 409
  return ({ D1 d; 42; }); 
#else 
  return ({ 42; });
#endif 
}
int main() {
  int x = 0;
  x = g1();
  if (x == 42) {
    printf("OK\n");
  }
  else {
    printf("NG:x=%d\n", x);
  }
  return 0;
}
