




#include <type_traits>

typedef struct u;

int main()
{
    std::is_empty<u[]>::value;
}
