



#include <future>
#include <type_traits>

int main()
{
    static_assert((std::is_convertible<std::future_error*,
                                       std::logic_error*>::value), "");
}
