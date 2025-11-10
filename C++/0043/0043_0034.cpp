#include <iostream>
#include <atomic>

int main(void){
  {
#if defined (__EDG_VERSION) && __EDG_VERSION <= 410
    std::atomic<int> x = 1;
#else
    std::atomic<int> x(1);
#endif
    auto ret = atomic_exchange(&x, 10);

    if(ret == 1 && x == 10){
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
    auto ret = atomic_exchange_explicit(&x, 10, std::memory_order_consume);

    if(ret == 1 && x == 10){
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
    auto ret = x.exchange(10);

    if(ret == 1 && x == 10){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }


  return 0;
}
