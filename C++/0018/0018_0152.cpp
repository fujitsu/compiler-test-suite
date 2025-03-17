








#include <functional>
#include <type_traits>

int main()
{
    static_assert((std::is_base_of<std::exception, std::bad_function_call>::value), "");
}
