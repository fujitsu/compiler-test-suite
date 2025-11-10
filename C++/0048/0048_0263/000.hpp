#ifndef _B_HPP
#define _B_HPP

template <typename T, int MAXSIZE>
class Stack
{
private:
  T elems[MAXSIZE];
  int numElems;

public:
  Stack();

  void push(const T&);
  void pop(void);
  T top(void) const;

  bool empty() const
  {
    return (numElems == 0);
  }

  bool full() const
  {
    return (numElems == MAXSIZE);
  }
};

#endif
