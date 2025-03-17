struct A {
  auto fun(int);
  decltype(auto) fun_d(int);
};

auto A::fun(int x) {
  if (x == 1) {
    return 1;
  }
  return 2;
}

decltype(auto) A::fun_d(int x) {
  if (x == 2) {
    return 1.0;
  }
  return 2.0;
}

template <typename T> auto fun(T t) {
  if (t == 3) {
    return 1;
  }
  return 2;
}

template <typename T> decltype(auto) fun_d(T t) {
  if (t == 4) {
    return 1.0;
  }
  return 2.0;
}

void test() {
  A a;
  a.fun(1);
  a.fun_d(2);

  fun(3);
  fun_d(4);
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
