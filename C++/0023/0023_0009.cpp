void g() { int a = 1; }

void h() { int b = 2; }

void i() { int c = 3; }

void f(int n) {
  switch (n) {
  case 0:
  case 1:
  case 2:
    g();
    [[fallthrough]];
  case 3:
    h();
  case 4:
    i();
  case 5:
    g();
  case 6:
    h();
  case 7:
    i();
  case 8:
    g();
  case 9:
    i();
  }
}

int main() {
  f(0);
  f(1);
  f(2);
  f(3);
  f(4);
  f(5);
  f(6);
  f(7);
  f(8);
  f(9);
}
