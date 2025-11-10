#ifndef _B_HPP
#define _B_HPP

#include <vector>

template <typename T, typename U = std::vector<T> >
class Stack
{
private:
  U elems;

public:
  void push(const T&);
  void pop(void);
  T top(void) const;
  bool empty() const
  {
    return elems.empty();
  }
};

#endif
