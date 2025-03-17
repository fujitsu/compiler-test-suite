









#include <mutex>
#include <type_traits>

int main()
{
    static_assert((std::is_same<std::lock_guard<std::mutex>::mutex_type,
                   std::mutex>::value), "");
}
