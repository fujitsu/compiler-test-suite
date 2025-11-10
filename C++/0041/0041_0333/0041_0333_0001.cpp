#include <vector>
#include <iterator>
#include <type_traits>

extern auto beg(void) -> std::vector<int>::iterator;
extern auto end(void) -> std::vector<int>::iterator;

auto beg(void) -> std::vector<int>::iterator
{
  std::vector<int> vec;
  return std::begin(vec);
}

auto end(void) -> std::vector<int>::iterator
{
  std::vector<int> vec;
  return std::end(vec);
}
