#include <iostream>
#include <atomic>

int main(void){
  {
#if defined (__EDG_VERSION) && __EDG_VERSION <= 410
    std::atomic<int> x = 1;
#else
    std::atomic<int> x (1);
#endif
    auto ret = x++;


    if(ret == 1 && x == 2){
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
    auto ret = ++x;

    if(ret == 2 && x == 2){
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
    auto ret = x--;

    if(ret == 1 && x == 0){
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
    auto ret = --x;

    if(ret == 0 && x == 0){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;
    }
  }

  return 0;
}
