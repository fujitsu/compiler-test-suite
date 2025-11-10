#include <iostream>
#include <random>


class sequence_generator {
  size_t value_ = 0;
public:
  using result_type = size_t;

  sequence_generator(result_type = 0) {}
  void seed(result_type) {}

  constexpr static result_type min() { return 0; }
  constexpr static result_type max() { return 65537; }

  result_type operator()()
  {
    return value_++;
  }

  void discard(unsigned long long z)
  {
    for (size_t i = 0; i < z; ++i) {
      (*this)();
    }
  }
};

int main()
{
  
  
  
  std::discard_block_engine<sequence_generator, 3, 2> engine;

  for (int i = 0; i < 10; ++i) {
    std::cout << engine() << std::endl;
  }
}
