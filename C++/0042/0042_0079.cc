extern "C" int puts(const char*);
extern "C" int printf(const char*,...);

class Base {
  int member = 5;
public:
  Base() : Base(7)
  {
    printf("Base()-1 : member: %d\n", member);
    Base(-1);
    printf("Base()-2 : member: %d\n", member);
  }
  Base(int arg)
  {
    printf("Base(int)-1 : member: %d\n", member);
    member = arg > 0 ? arg : -arg;
    printf("Base(int)-2 : member: %d\n", member);
  }
  int getMember() {return member;}
};

class Derived : public Base {
public:
  Derived() : Derived(9)
  {
    printf("Derived()-1 : member: %d\n", getMember());
    Derived(100);
    printf("Derived()-2 : member: %d\n", getMember());
  }
  Derived(int arg) : Base(arg)
  {
    printf("Derived(int) : member: %d\n", getMember());
  }
  Derived(double d) {
    printf("Derived(char) : member: %d\n", getMember());
  }
};

int main()
{
  Derived();
  puts("");

  Derived(1);
  puts("");

  Derived(1.5);
  puts("");

  Derived d1;
  printf("main : %d\n", d1.getMember());
  puts("");

  Derived d2(100);
  printf("main : %d\n", d2.getMember());
  puts("");

  Derived d3(1.5);
  printf("main : %d\n", d3.getMember());
  puts("");
}
