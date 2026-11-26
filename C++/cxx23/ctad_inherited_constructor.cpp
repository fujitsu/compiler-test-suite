/*
 * FEATURE: C++23 P2582R1 "Class template argument deduction from inherited constructors"
 * SPEC: P2582R1
 * PURPOSE: Verify that class template argument deduction can deduce template
 *          arguments from inherited constructors.
 *
 * RUN: g++ -std=c++23 -Wall -Wextra -Werror ctad_inherited_constructor.cpp
 */

#include <cstdlib>
#include <type_traits>

/*
 * Define a base class template whose constructor takes an argument of the
 * template parameter type.
 */
template <typename T>
struct Base {
  Base(T) {}
};

/*
 * Inherit the constructor from Base<T>.  P2582R1 allows CTAD for Derived
 * to use this inherited constructor to deduce T.
 */
template <typename T>
struct Derived : Base<T> {
  using Base<T>::Base;
};

/*
 * Define a base class template with multiple template parameters to verify
 * deduction when the parameter mapping is more complex.
 */
template <typename T, typename U, typename V>
struct MultiBase {
  MultiBase(T, U, V) {}
};

/*
 * Inherit a constructor from MultiBase with a different ordering of template
 * parameters.  This verifies that deduction correctly maps the base class
 * template arguments to the derived class template arguments.
 */
template <typename T, typename U>
struct MultiDerived : MultiBase<U, T, int> {
  using MultiBase<U, T, int>::MultiBase;
};

int main() {
  /*
   * Deduce Derived<int> from the inherited Base<int> constructor.
   */
  Derived d(42);
  static_assert(std::is_same_v<decltype(d), Derived<int>>);

  /*
   * Deduce U as bool and T as char through the inherited constructor,
   * resulting in MultiDerived<char, bool>.
   */
  MultiDerived md(true, 'a', 1);
  static_assert(
      std::is_same_v<decltype(md), MultiDerived<char, bool>>);

  return EXIT_SUCCESS;
}
