#include <cassert>
#if __has_include("optional")
# include "optional"
# define have_optional 1
# define experimental_optional 0
#elif __has_include("experimental/optional")
# include "experimental/optional"
# define have_optional 0
# define experimental_optional 1
#else
# define have_optional 0
# define experimental_optional 0
#endif

int main()
{
    assert(have_optional ==1||experimental_optional ==1);
}
