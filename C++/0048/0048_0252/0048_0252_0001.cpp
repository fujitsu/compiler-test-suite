#include <cstdio>
#include <stdexcept>

using namespace std;

#define THROW_FUNC(N, ErrTy)  \
  static void func##N()       \
  {                           \
    throw ErrTy(#ErrTy);      \
  }

THROW_FUNC(1, logic_error)
THROW_FUNC(2, domain_error)
THROW_FUNC(3, invalid_argument)
THROW_FUNC(4, length_error)
THROW_FUNC(5, out_of_range)
THROW_FUNC(6, runtime_error)
THROW_FUNC(7, range_error)
THROW_FUNC(8, overflow_error)
THROW_FUNC(9, underflow_error)

#define TRY_CATCH_CODE(N, ErrTy)   \
  try {                            \
    func##N();                     \
  }                                \
  catch (...) {                    \
  }

void sub1()
{
  TRY_CATCH_CODE(1, logic_error)
  TRY_CATCH_CODE(2, domain_error)
  TRY_CATCH_CODE(3, invalid_argument)
  TRY_CATCH_CODE(4, length_error)
  TRY_CATCH_CODE(5, out_of_range)
  TRY_CATCH_CODE(6, runtime_error)
  TRY_CATCH_CODE(7, range_error)
  TRY_CATCH_CODE(8, overflow_error)
  TRY_CATCH_CODE(9, underflow_error)
  puts("OK");
}
