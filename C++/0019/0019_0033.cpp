auto fun_var() { decltype(auto) var = 1; }

decltype(auto) fun_ret() { return; }

void test() {
  fun_var();
  fun_ret();
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
