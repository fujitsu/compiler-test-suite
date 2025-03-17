












#include <array>
#include <tuple>


typedef std::array<char, 1256> array_t;
typedef std::tuple<array_t> tuple_t;

int main()
{
    array_t arr;
    tuple_t tup(arr);
}
