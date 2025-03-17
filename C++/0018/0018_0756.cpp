




#include <type_traits>

int main()
{
    static_assert((std::is_same<std::enable_if<true>::type, void>::value), "");
    static_assert((std::is_same<std::enable_if<true, int>::type, int>::value), "");
}
