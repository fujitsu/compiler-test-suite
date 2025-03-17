#include <stdint.h>
#include <cassert>
#include <type_traits>

enum class Handle : uint32_t { Invalid = 0 };

int main()
{
    Handle h { 42 };
    assert(static_cast<std::underlying_type<Handle>::type>(h) == 42);
}
