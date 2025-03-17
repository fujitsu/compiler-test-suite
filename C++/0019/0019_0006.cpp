class A {
public:
  A() : val(0) {}
  A &operator=(int *_val) {
    val = _val;
    return *this;
  }
  operator int *&() { return val; }

private:
  int *val;
};

void test1() {
  A p;
  p = new int(7);
  delete p;
}

void test2() {
  A *pa = new A;
  delete pa;
}

void test3() {
  A a;
  delete a;
}

void test() {
  test1();
  test2();
  test3();
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
