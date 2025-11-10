#ifndef TEMPLATE6_H
#define TEMPLATE6_H

template <typename T1, typename T2, typename T3>
struct Base {
  T1 a;
  T2 b;
  T3 c;
};

template <typename T1, typename T2, typename T3>
struct Values : public Base<T1, T2, T3> {
};
#endif
