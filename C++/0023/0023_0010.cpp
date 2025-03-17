void g() { bool b = true; }

void h() { bool a = false; }

void i() { int c = 1; }

void f(int n) {
  switch (n) {
  case 1:
  case 2:
    g();
    [[fallthrough]];
  default:
    h();
  }
}

int main() {
  f(1);
  f(2);
  f(3);
}
