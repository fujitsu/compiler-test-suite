#include <type_traits>
#include <iostream>

template <typename T>
struct Identity
{
  using type = T;
};

template <typename T>
void print(std::initializer_list<T> list,
	   typename Identity<void (*) (T)>::type func = 
	   [] (T n) { std::cout << n << std::endl; })
{
  for (auto&& e: list) {
    func(e);
  }
}

void sub1()
{
  print({1, 2, 3});

  print({0.1f, 0.2f, 0.3f}, [] (float f) {
      std::cout << f << std::endl;
    });
}
