




#include <type_traits>

typedef struct A{class B;} a;

int main()
{
    std::is_polymorphic<a::B[]>::value;
}
