/*
FEATURE: typename optional in more contexts
SPEC: P0634R3, C++20 [temp.dep]
PURPOSE: Verify only the contexts where dependent type names are
         unambiguously treated as types and 'typename' can be omitted.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror typename_optional_in_more_contexts.cpp
*/

#include <type_traits>

/*
Template providing dependent types.
*/
template<class T>
struct Holder
{
  using value_type = T;

  struct node
  {
    T value;
  };

};

/*
Test 1: trailing return type (always a type)
*/
template<class T>
auto make_value() -> Holder<T>::value_type
{
  return T{};
}

/*
Test 2: alias declaration (RHS must be a type)
*/
template<class T>
using alias_type = Holder<T>::value_type;

int test_alias()
{
  alias_type<int> v = 1;
  return (v == 1) ? 0 : 1;
}

/*
Test 3: typedef (type-only context)
*/
template<class T>
struct TypedefTest
{
  typedef Holder<T>::value_type type;
};

int test_typedef()
{
  TypedefTest<int>::type v = 2;
  return (v == 2) ? 0 : 2;
}

/*
Test 4: base class (must be a type)
*/
template<class T>
struct Base
{
  using type = T;
};

template<class T>
struct Derived : Base<T>::type
{
};

struct Dummy { };

int test_base()
{
  Derived<Dummy> d;
  (void)d;
  return 0;
}

/*
Test 5: new expression (type-id required)
*/
template<class T>
int test_new_expr()
{
  auto p = new Holder<T>::value_type(3);
  int result = (*p == 3) ? 0 : 4;
  delete p;
  return result;
}

/*
Test 6: another type-only alias usage chain
*/
template<class T>
struct Chain
{
  using type = Holder<T>::value_type;
};

int test_chain()
{
  Chain<int>::type v = 4;
  return (v == 4) ? 0 : 8;
}

int main()
{
  int result = 0;

  result |= test_alias();
  result |= test_typedef();
  result |= test_base();
  result |= test_new_expr<int>();
  result |= test_chain();

  auto v = make_value<int>();
  if (v != 0)
    result |= 16;

  return result;
}

