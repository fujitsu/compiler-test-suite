template <class T> decltype(auto) fun(T t) { return t; }

void test() { fun(1); }

int main(int argc, char *argv[]) {
  test();
  return 0;
}
