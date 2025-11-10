#include <iostream>
#include <atomic>

int main(void){
  {
#if defined (__EDG_VERSION) && __EDG_VERSION <= 410
    std::atomic<int> x = 1;
#else
    std::atomic<int> x(1);
#endif
    auto before = x.fetch_add(2);

    if(before == 1 && x.load() == 3){
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
    auto before = x.fetch_sub(2);

    if(before == 1 && x.load() == -1){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  {
#if defined (__EDG_VERSION) && __EDG_VERSION <= 410
    std::atomic<int> x = 0x11;
#else
    std::atomic<int> x(0x11);
#endif
    auto before = x.fetch_and(0x01);

    if(before == 0x11 && x == 0x01){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  {
#if defined (__EDG_VERSION) && __EDG_VERSION <= 410
    std::atomic<int> x = 0x10;
#else
    std::atomic<int> x(0x10);
#endif
    auto before = x.fetch_or(0x01);

    if(before == 0x10 && x == 0x11){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }


  {
#if defined (__EDG_VERSION) && __EDG_VERSION <= 410
    std::atomic<int> x = 0x1010;
#else
    std::atomic<int> x(0x1010);
#endif
    auto before = x.fetch_xor(0x1100);

    if(before == 0x1010 && x == 0x0110){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  return 0;
}
