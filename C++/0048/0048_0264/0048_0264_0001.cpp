#include <iostream>
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

  elems.pop_back();
}

template <typename T>
T Stack<T>::top() const
{
  if (elems.empty()) {
    throw std::out_of_range("Stack is empty");
  }

  return elems.back();
}

template <typename T>
template <typename U>
Stack<T>& Stack<T>::operator = (const Stack<U>& rhs)
{
  Stack<U> tmp(rhs);

  elems.clear();

  while (!tmp.empty()) {
    elems.push_front(tmp.top());
    tmp.pop();
  }

  return *this;
}

template void Stack<int>::push(const int&);
template void Stack<int>::pop();
template int Stack<int>::top() const;
template Stack<int>& Stack<int>::operator = (const Stack<double>& rhs);

template void Stack<double>::push(const double&);
template void Stack<double>::pop();
template double Stack<double>::top() const;
