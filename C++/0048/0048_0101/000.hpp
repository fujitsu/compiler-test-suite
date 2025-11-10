#ifndef _TEMPLATE_H
#define _TEMPLATE_H

namespace A { namespace B {
template <class T>
class MyStack
{
public:
  MyStack(int _cap)
    : index(0), capcity(_cap)
  {
    data = new T[_cap];
  }

  ~MyStack()
  {
    delete data;
  }

  T& pop()
  {
    return data[--index];
  }

  void push(T e)
  {
    data[index++] = e;
  }

private:
  T *data;
  int index;
  int capcity;

  MyStack() {}
};
}}

#endif
