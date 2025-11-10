#include <cstdio>

struct Base {
  Base() {puts("Base()");}
  
  Base(int i) {puts("Base(int)");}
};

struct Derived : Base {
  Derived() {puts("Derived()");}
  
  Derived(char c) {puts("Derived(char)");}
  
  
};

int main()
{
  Derived d1('c');
  Derived d2 = Derived(1);
}
