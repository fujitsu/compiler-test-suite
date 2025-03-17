#include <iostream>

const int SIZE = 10;

template <class StackType> class stack {
  int tos;
  StackType stck[SIZE];

public:
  void init() { tos = 0; }

  void push(StackType ch);

  StackType pop();
};

template <class Stack_Type> void stack<Stack_Type>::push(Stack_Type ob) {
  if (tos == SIZE) {
    std::cout << " Stack is full" << std::endl;
    return;
  }

  stck[tos] = ob;
  ++tos;
}

template <class Stack_Type> Stack_Type stack<Stack_Type>::pop() {
  if (tos == 0) {
    std::cout << "Stack is empty" << std::endl;
    return 0;
  }
  --tos;
  return stck[tos];
}

int main() {
  stack<char> s1, s2;

  s1.init();
  s2.init();
  s1.push('a');
  s2.push('x');
  s1.push('b');
  s2.push('y');
  s1.push('c');
  s2.push('z');

  if (s1.pop() != 'c' || s1.pop() != 'b' || s1.pop() != 'a') {
    std::cout << "NG" << std::endl;
  }

  if (s2.pop() != 'z' || s2.pop() != 'y' || s2.pop() != 'x') {
    std::cout << "NG" << std::endl;
  }

  stack<double> ds1, ds2;

  ds1.init();
  ds2.init();
  ds1.push(1.1);
  ds2.push(2.2);
  ds1.push(3.3);
  ds2.push(4.4);
  ds1.push(5.5);
  ds2.push(6.6);

  if (ds1.pop() != 5.5 || ds1.pop() != 3.3 || ds1.pop() != 1.1) {
    std::cout << "NG" << std::endl;
  }

  if (ds2.pop() != 6.6 || ds2.pop() != 4.4 || ds2.pop() != 2.2) {
    std::cout << "NG" << std::endl;
  }

  std::cout << "OK" << std::endl;

  return 0;
}
