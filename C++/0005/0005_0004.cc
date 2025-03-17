extern "C" int printf(const char *, ...);
struct D2 { ~D2() {} };
#if __EDG_VERSION__ >= 410
D2 g2(D2 d) {
  return ({ d; }); 
}
#else 
int g2(D2 d) {
  return ({ 2; });
}
#endif
int main() {
  D2 obj;
  g2(obj);
  printf("OK\n");
  return 0;
}
