#ifndef _B_HPP
#define _B_HPP

#include <vector>

template <typename T>
class Stack
{
private:
  std::vector<T> elems;

public:
  void push(const T&);
  void pop(void);

  T top(void) const;
  bool empty(void) const
  {
    return elems.empty();
  }
};

#endif
