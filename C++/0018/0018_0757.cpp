




#include <type_traits>
#include <climits>

enum E { V = INT_MIN };
enum F { W = UINT_MAX };

int main()
{
    static_assert((std::is_same<std::underlying_type<E>::type, int>::value),
                  "E has the wrong underlying type");
    static_assert((std::is_same<std::underlying_type<F>::type, unsigned>::value),
                  "F has the wrong underlying type");
}
