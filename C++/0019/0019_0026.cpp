template <class T> auto f(T t) { return t; }

template <class T> auto f(T *t) { return *t; }

void g() { int (*p)(int *) = &f; }

void test() { g(); }

int main(int argc, char *argv[]) {
  test();
  return 0;
}
