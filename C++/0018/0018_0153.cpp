



#include <functional>
#include <type_traits>

int main()
{
    std::bad_function_call ex;
    static_assert(noexcept(std::bad_function_call()),"");
}
