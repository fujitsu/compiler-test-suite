








#include <random>
#include <type_traits>

template <class T>
void
test()
{
    static_assert((std::is_same<
        typename std::linear_congruential_engine<T, 0, 0, 0>::result_type,
        T>::value), "");
}

int main()
{
    test<unsigned short>();
    test<unsigned int>();
    test<unsigned long>();
    test<unsigned long long>();
}
