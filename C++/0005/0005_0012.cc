extern "C" int printf(const char *, ...);

extern "C" {

  void f() {};
}
int main() {
  f();
  printf("OK\n");
  return 0;
}
