#ifndef TEMPLATE16_H
#define TEMPLATE16_H

template <typename T1, typename T2, typename T3>
struct Base {
  struct X {
    T1 a;
    T2 b;
    T3 c;
  };
};

template <typename T1, typename T2, typename T3>
struct Values : public Base<T1, T2, T3> {
};
#endif
