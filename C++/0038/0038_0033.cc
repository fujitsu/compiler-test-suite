#include <iostream>

const int SIZE = 10;

class stack {
  int tos;
  char stck[SIZE];
public:
  stack();
  void push(char);
  char pop();
};

stack::stack()
{
  tos = 0;
}

void stack::push(char ch)
{
  if(tos == SIZE) {
    std::cout << "Stack is full" << std::endl;
  }

  stck[tos] = ch;
  ++tos;
}

char stack::pop()
{
  --tos;
  return stck[tos];
}

int main()
{
  stack  s1,s2;

  s1.push('a'); 
  s1.push('b'); 
  s1.push('c'); 

  s2 = s1; 

  if (s1.pop() != 'c' ||
      s1.pop() != 'b' ||
      s1.pop() != 'a') {
    std::cout << "NG" << std::endl;
  }

  if (s2.pop() != 'c' ||
      s2.pop() != 'b' ||
      s2.pop() != 'a') {
    std::cout << "OK" << std::endl;
  }

  std::cout << "OK" << std::endl;

  return 0;
}
