








#include <memory>

struct A;  

int main()
{
    static_assert((std::is_same<std::weak_ptr<A>::element_type, A>::value), "");
}
