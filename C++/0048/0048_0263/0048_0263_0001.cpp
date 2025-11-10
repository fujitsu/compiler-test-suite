
#include <iostream>
#include <stdexcept>
#include "000.hpp"

template <typename T, int MAXSIZE>
Stack<T, MAXSIZE>::Stack()
  : numElems(0) {}

template <typename T, int MAXSIZE>
void Stack<T, MAXSIZE>::push(const T& e)
{
  if (numElems == MAXSIZE) {
    throw std::out_of_range("Stack is full");
  }
  
  elems[numElems++] = e;
}

template <typename T, int MAXSIZE>
void Stack<T, MAXSIZE>::pop()
{
  if (numElems <= 0) {
    throw std::out_of_range("Stack is empty");
  }

  --numElems;
}

template <typename T, int MAXSIZE>
T Stack<T, MAXSIZE>::top() const
{
  if (numElems <= 0) {
    throw std::out_of_range("Stack is empty");
  }

  return elems[numElems - 1];
}

template Stack<int, 10>::Stack();
template void Stack<int, 10>::push(const int&);
template void Stack<int, 10>::pop();
template int Stack<int, 10>::top() const;
