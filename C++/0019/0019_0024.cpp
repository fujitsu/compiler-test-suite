auto sum(int i) {
  if (i == 1)
    return i;
  else
    return sum(i - 1) + i;
}

void test() { sum(2); }

int main(int argc, char *argv[]) {
  test();
  return 0;
}
