#ifndef _B_HPP
#define _B_HPP

#include <deque>

template <typename T>
class Stack
{
private:
  std::deque<T> elems;

public:
  void push(const T&);
  void pop(void);
  T top(void) const;

  bool empty() const
  {
    return elems.empty();
  }

  template <typename U>
  Stack<T>& operator = (const Stack<U>&);
};

#endif
