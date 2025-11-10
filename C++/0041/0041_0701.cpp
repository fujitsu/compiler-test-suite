#include <iostream>
#include <utility>

enum class A : char{};
enum class B : char16_t{};
enum class C : char32_t{};
enum class D : wchar_t{};
enum class E : bool{};
enum class F : short{};
enum class G : int{};
enum class H : long{};
enum class I : long long{};

int main(void){
  std::underlying_type<A>::type a;
  std::underlying_type<B>::type b;
  std::underlying_type<C>::type c;
  std::underlying_type<D>::type d;
  std::underlying_type<E>::type e;
  std::underlying_type<F>::type f;
  std::underlying_type<G>::type g;
  std::underlying_type<H>::type h;
  std::underlying_type<I>::type i;

  auto ret1 = std::is_same<decltype(a), char>::value;
  auto ret2 = std::is_same<decltype(b), char16_t>::value;
  auto ret3 = std::is_same<decltype(c), char32_t>::value;
  auto ret4 = std::is_same<decltype(d), wchar_t>::value;
  auto ret5 = std::is_same<decltype(e), bool>::value;
  auto ret6 = std::is_same<decltype(f), short>::value;
  auto ret7 = std::is_same<decltype(g), int>::value;
  auto ret8 = std::is_same<decltype(h), long>::value;
  auto ret9 = std::is_same<decltype(i), long long>::value;

  if(ret1 && ret2 && ret3 &&
     ret4 && ret5 && ret6 &&
     ret7 && ret8 && ret9){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
