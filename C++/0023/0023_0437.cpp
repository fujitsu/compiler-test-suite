#include <stdint.h>
#include <cassert>
#include <type_traits>

enum class Handle : uint32_t { Invalid = 0 };

int main()
{
    Handle j = Handle{'a'};
    assert(static_cast<std::underlying_type<Handle>::type>(j) == 'a');
}
