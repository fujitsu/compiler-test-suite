#ifndef _B_HPP
#define _B_HPP

#include <vector>
#include <string>
#include <deque>

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

template <>
class Stack<std::string>
{
private:
  std::deque<std::string> elems;

public:
  void push(const std::string&);
  void pop(void);

  std::string top(void) const;
  bool emtpy(void) const
  {
    return elems.empty();
  }
};

#endif
