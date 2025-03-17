
#include <utility>

void test()
{
    typedef std::pair<int, char*> P;
    static_assert((std::is_same<typename std::tuple_element<0, P>::type, int>::value), "");
    static_assert((std::is_same<typename std::tuple_element<1, P>::type, char*>::value), "");
}

int main()
{
    test();
}
