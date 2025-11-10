#include <iostream>
#include <atomic>

int main(void){
#if defined (__EDG_VERSION) && __EDG_VERSION <= 410
  std::atomic<int> x = 1;
  std::atomic<int> y = 2;
  std::atomic<int> z = 3;
#else
  std::atomic<int> x(1);
  std::atomic<int> y(2);
  std::atomic<int> z(3);
#endif

  auto a = std::atomic_load(&x);
  auto b = std::atomic_load_explicit(&y, std::memory_order_acquire);
  auto c = z.load();

  if(x == 1 && y == 2 && z == 3){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
