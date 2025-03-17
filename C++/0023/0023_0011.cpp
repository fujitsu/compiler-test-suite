void g() { int i = 3; }

void h() { char c = 'd'; }

void i() { double d = 0.34; }

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
    [[fallthrough]];
  default:
    g();
  }
}

int main() {
  f(0);
  f(1);
  f(2);
  f(3);
  f(4);
  f(5);
}
