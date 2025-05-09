#include <cassert>
#include <type_traits>

#define decl_static(m, n) static decltype(auto) s_x_##m = n

struct A {
  A() { x = 1; }
  int x;
};

decl_static(bool, true);
decl_static(integer, 1);
decl_static(float, 1.0);
int *ptr = 0;
decl_static(pointer, ptr);
int x = 1;
int &ref = x;
decl_static(reference, ref);
A a;
decl_static(A, a);

void test1() {

  assert(s_x_bool == true);
  assert(true == (std::is_same<bool, decltype(s_x_bool)>::value));
  assert(s_x_integer == 1);
  assert(true == (std::is_same<int, decltype(s_x_integer)>::value));
  assert(s_x_float == 1.0);
  assert(true == (std::is_same<double, decltype(s_x_float)>::value));
  assert(s_x_pointer == 0);
  assert(true == (std::is_same<int *, decltype(s_x_pointer)>::value));
  assert(s_x_reference == 1);
  assert(true == (std::is_same<int &, decltype(s_x_reference)>::value));
  assert(s_x_A.x == 1);
  assert(true == (std::is_same<A, decltype(s_x_A)>::value));
}

void test2() {

  decl_static(local_bool, true);
  decl_static(local_integer, 1);
  decl_static(local_float, 1.0);
  decl_static(local_pointer, ptr);
  decl_static(local_reference, ref);
  decl_static(local_A, a);

  assert(s_x_local_bool == true);
  assert((std::is_same<bool, decltype(s_x_local_bool)>::value == true));
  assert(s_x_local_integer == 1);
  assert((std::is_same<int, decltype(s_x_local_integer)>::value == true));
  assert(s_x_local_float == 1.0);
  assert((std::is_same<double, decltype(s_x_local_float)>::value == true));
  assert(s_x_local_pointer == 0);
  assert((std::is_same<int *, decltype(s_x_local_pointer)>::value == true));
  assert(s_x_local_reference == 1);
  assert((std::is_same<int &, decltype(s_x_local_reference)>::value == true));
  assert(s_x_local_A.x == 1);
  assert((std::is_same<A, decltype(s_x_local_A)>::value == true));
}

namespace __NM__ {

decl_static(bool, true);
decl_static(integer, 1);
decl_static(float, 1.0);
decl_static(pointer, ptr);
decl_static(reference, ref);
decl_static(A, a);
void test3() {

  assert(s_x_bool == true);
  assert(true == (std::is_integral<decltype(s_x_bool)>::value));
  assert(s_x_integer == 1);
  assert(true == (std::is_integral<decltype(s_x_integer)>::value));
  assert(s_x_float == 1.0);
  assert(true == (std::is_floating_point<decltype(s_x_float)>::value));
  assert(s_x_pointer == 0);
  assert(true == (std::is_pointer<decltype(s_x_pointer)>::value));
  assert(s_x_reference == 1);
  assert(true == (std::is_reference<decltype(s_x_reference)>::value));
  assert(s_x_A.x == 1);
  assert(true == (std::is_class<decltype(s_x_A)>::value));
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
