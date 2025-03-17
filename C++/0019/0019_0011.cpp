#include <cassert>
#include <type_traits>

#define decl(auto, m, n) decltype(auto) x_##m = n

struct A {
  A() { x = 1; }
  int x;
};

decl(auto, bool, true);
decl(auto, integer, 1);
decl(auto, float, 1.0);
const int *ptr = 0;
decl(auto, pointer, ptr);
int x = 1;
const int &ref = x;
decl(auto, reference, ref);
const A a;
decl(auto, A, a);

void test1() {

  assert(x_bool == true);
  assert(true == (std::is_same<bool, decltype(x_bool)>::value));
  assert(x_integer == 1);
  assert(true == (std::is_same<int, decltype(x_integer)>::value));
  assert(x_float == 1.0);
  assert(true == (std::is_same<double, decltype(x_float)>::value));
  assert(x_pointer == 0);
  assert(true == (std::is_same<const int *, decltype(x_pointer)>::value));
  assert(x_reference == 1);
  assert(true == (std::is_same<const int &, decltype(x_reference)>::value));
  assert(x_A.x == 1);
  assert(true == (std::is_same<const A, decltype(x_A)>::value));
}

void test2() {
  decl(auto, local_bool, true);
  decl(auto, local_integer, 1);
  decl(auto, local_float, 1.0);
  const int *ptr = 0;
  decl(auto, local_pointer, ptr);
  int local_x = 1;
  const int &local_ref = local_x;
  decl(auto, local_reference, local_ref);
  decl(auto, local_A, a);

  assert(x_local_bool == true);
  assert(true == (std::is_same<bool, decltype(x_local_bool)>::value));
  assert(x_local_integer == 1);
  assert(true == (std::is_same<int, decltype(x_local_integer)>::value));
  assert(x_local_float == 1.0);
  assert(true == (std::is_same<double, decltype(x_local_float)>::value));
  assert(x_local_pointer == 0);
  assert(true == (std::is_same<const int *, decltype(x_local_pointer)>::value));
  assert(x_local_reference == 1);
  assert(true ==
         (std::is_same<const int &, decltype(x_local_reference)>::value));
  assert(x_local_A.x == 1);
  assert(true == (std::is_same<const A, decltype(x_local_A)>::value));
}

namespace __NM__ {

decl(auto, bool, true);
decl(auto, integer, 1);
decl(auto, float, 1.0);
const int *ptr = 0;
decl(auto, pointer, ptr);
int x = 1;
const int &ref = x;
decl(auto, referrence, ref);
const A a;
decl(auto, A, a);
void test3() {

  assert(x_bool == true);
  assert(true == (std::is_same<bool, decltype(x_bool)>::value));
  assert(x_integer == 1);
  assert(true == (std::is_same<int, decltype(x_integer)>::value));
  assert(x_float == 1.0);
  assert(true == (std::is_same<double, decltype(x_float)>::value));
  assert(x_pointer == 0);
  assert(true == (std::is_same<const int *, decltype(x_pointer)>::value));
  assert(x_reference == 1);
  assert(true == (std::is_same<const int &, decltype(x_reference)>::value));
  assert(x_A.x == 1);
  assert(true == (std::is_same<const A, decltype(x_A)>::value));
}
}

void test() {
  test1();
  test2();
  __NM__::test3();
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
