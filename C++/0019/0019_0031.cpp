auto glambda = [](int x, auto y) {};

void test() {
  auto lambda = [](int x, auto y) {};
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
