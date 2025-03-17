auto fun() {
  if (true) {
    return 1;
  }
  return 2;
}

decltype(auto) fun_d() {
  if (true) {
    return 1.0;
  }
  return 2.0;
}

void test() {
  fun();
  fun_d();
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
