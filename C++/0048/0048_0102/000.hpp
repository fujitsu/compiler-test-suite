#ifndef _TEMPLATE_H
#define _TEMPLATE_H

template <class T>
void swap(T& a, T& b)
{
  T tmp = a;
  a = b;
  b = tmp;
}

#endif
