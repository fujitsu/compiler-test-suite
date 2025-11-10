extern "C" int puts(const char*);
struct X {
  int a;
  void check(int arg) { if (arg < 0) throw arg; else a = arg;}

  X() { puts("X()"); check(0); }
  X(int arg) { puts("X(int)"); check(arg);}
};

struct Y {
  int a;
  void check(int arg) { }

  Y():Y(0) { puts("Y()"); } 
  Y(int arg):Y(arg, 0) { puts("Y(int)"); if (arg < 0) throw arg; else a = arg; }
  Y(int a, int b) {}
};

int main()
{
  X x1;
  puts("");
  X x2(1);
  puts("");
  Y y1;
  puts("");
  Y y2(1);
}
