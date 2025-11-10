#include <stdexcept>
#include "000.hpp"

template <typename T>
void Stack<T>::push(const T& e)
{
  elems.push_back(e);
}

template <typename T>
void Stack<T>::pop()
{
  if (elems.empty()) {
    throw std::out_of_range("Stack is empty");
  }

  return elems.pop_back();
}

template <typename T>
T Stack<T>::top() const
{
  if (elems.empty()) {
    throw std::out_of_range("Stack is empty");
  }

  return elems.back();
}

template void Stack<int>::push(const int&);
template void Stack<int>::pop();
template int Stack<int>::top() const;
