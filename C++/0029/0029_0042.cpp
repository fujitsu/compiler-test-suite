#include <iostream>

#define OPERATOR_COMMUTATIVE(NAME, OP)                                         \
  template <class T>                                                           \
  class NAME##1 {public : friend T operator OP(const T &lhs,                   \
                                               const T &rhs){T nrv(lhs);       \
  nrv OP## = rhs;                                                              \
  return nrv;                                                                  \
  }                                                                            \
  }                                                                            \
  ;

OPERATOR_COMMUTATIVE(addable, +)

class NRVO : public addable1<NRVO> {
public:
  int m_x;

  NRVO() {}
  explicit NRVO(int x) : m_x(x) {}
  NRVO(const NRVO &rhs) { m_x = rhs.m_x; }

  NRVO &operator=(const NRVO &rhs) {
    m_x = rhs.m_x;
    return *this;
  }

  NRVO &operator+=(const NRVO &rhs) {
    m_x += rhs.m_x;
    return *this;
  }

  void print() { std::cout << m_x << std::endl; }
};

void print(NRVO nrv)
#ifdef __GNUC__
    __attribute__((noinline))
#endif
    ;

int main() {
  NRVO nrv1(3), nrv2(5);
  NRVO nrv3 = nrv1 + nrv2;
  nrv3.print();
  return 0;
}
