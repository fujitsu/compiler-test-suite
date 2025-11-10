#ifndef _B_HPP
#define _B_HPP

#include <deque>
#include <memory>

template <typename T,
	  template <typename U,
		    typename ALLOC = std::allocator<U> >
                   class CONT = std::deque>
class Stack
{
private:
  CONT<T> elems;

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
