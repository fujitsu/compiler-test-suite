extern "C" int puts(const char*);

class Base {
  int member;
public:
  Base()
  {
    puts("Base()");
    Base(-1);
  }
  Base(int arg)
  {
    puts("Base(int)");
    member = arg > 0 ? arg : -arg;
  }
};

class Derived : public Base {
public:
  Derived()
  {
    puts("Derived()");
    Derived(100);
  }
  Derived(int arg) : Base(arg)
  {
    puts("Derived(int)");
  }
};

int main()
{
  Derived();
  puts("");
  Derived(1);
}
