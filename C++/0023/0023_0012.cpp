void g() { int e = 45; }

void h() { float f = 7.980; }

void i() { char c = 'q'; }

void f(int n) {
  switch (n) {
  case 0:
  case 1:
  case 2:
    g();
    [[fallthrough]] [[fallthrough]];
  case 3:
    h();
  case 4:
    i();
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
