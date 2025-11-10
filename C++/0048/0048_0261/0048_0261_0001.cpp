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

void Stack<std::string>::push(const std::string& e)
{
  elems.push_back(e);
}

void Stack<std::string>::pop()
{
  if (elems.empty()) {
    throw std::out_of_range("Stack is empty");
  }

  return elems.pop_back();
}

std::string Stack<std::string>::top() const
{
  if (elems.empty()) {
    throw std::out_of_range("Stack is empty");
  }

  return elems.back();
}
