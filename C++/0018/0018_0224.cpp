




#include <memory>

void test(std::allocator_arg_t) {}

int main()
{
    test(std::allocator_arg);
}
