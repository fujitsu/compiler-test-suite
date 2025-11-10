#include <iostream>
#include <stdexcept>
#include <vector>

#include "000.hpp"

template <typename T,
	  template <typename, typename> class CONT>
void Stack<T, CONT>::push(const T& e)
{
  elems.push_back(e);
}

template <typename T,
	  template <typename, typename> class CONT>
void Stack<T, CONT>::pop()
{
  if (elems.empty()) {
    throw std::out_of_range("Stack is empty");
  }

  elems.pop_back();
}

template <typename T,
	  template <typename, typename> class CONT>
T Stack<T, CONT>::top() const
{
  if (elems.empty()) {
    throw std::out_of_range("Stack is empty");
  }

  return elems.back();
}

template void Stack<int, std::vector>::push(const int&);
template void Stack<int, std::vector>::pop();
template int Stack<int, std::vector>::top() const;
