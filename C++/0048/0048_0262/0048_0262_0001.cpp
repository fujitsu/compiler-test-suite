#include <stdexcept>
#include <deque>
#include "000.hpp"

template <typename T, typename U>
void Stack<T, U>::push(const T& e)
{
  elems.push_back(e);
}

template <typename T, typename U>
void Stack<T, U>::pop()
{
  if (elems.empty()) {
    throw std::out_of_range("Stack is empty");
  }

  elems.pop_back();
}

template <typename T, typename U>
T Stack<T, U>::top() const
{
  if (elems.empty()) {
    throw std::out_of_range("Stack is empty");
  }

  return elems.back();
}

template void
Stack<int, std::deque<int> >::push(const int&);

template void
Stack<int, std::deque<int> >::pop();

template int
Stack<int, std::deque<int> >::top() const;
