
#include <iostream>
#include <atomic>
#include <thread>
#include <mutex>

std::mutex print_mtx;

class spinlock {
private:
  std::atomic_flag state_;

public:
  spinlock() : state_(ATOMIC_FLAG_INIT) {}

  void lock()
  {
    
    while (state_.test_and_set(std::memory_order_acquire)) {
      
    }
  }

  void unlock()
  {
    
    state_.clear(std::memory_order_release);
  }
};

namespace {
  spinlock lock;
}

template <class T>
void print(const T& x)
{
  std::lock_guard<spinlock> lk(lock);
  std::cout << x << std::endl;
}

void f()
{
  print(1);
}

void g()
{
  print(2);
}

int main()
{
  print_mtx.lock();
  std::thread t1(f);
  t1.join();
  print_mtx.unlock();

  print_mtx.lock();
  std::thread t2(g);
  t2.join();
  print_mtx.unlock();

  return 0;
}
