#include <iostream>
#include <atomic>

int main(void){
  int expected = 1;
  {
#if defined (__EDG_VERSION) && __EDG_VERSION <= 410
    std::atomic<int> x = 1;
#else
    std::atomic<int> x(1);
#endif
    auto ret = atomic_compare_exchange_strong(&x, &expected, 10);

    if(ret == 1 && x == 10 && expected == 1){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  {
#if defined (__EDG_VERSION) && __EDG_VERSION <= 410
    std::atomic<int> x = 1;
#else
    std::atomic<int> x(1);
#endif
    auto ret = x.compare_exchange_strong(expected, 10);

    if(ret == 1 && x == 10 && expected == 1){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  return 0;
}
