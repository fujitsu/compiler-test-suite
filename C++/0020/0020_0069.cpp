#include <regex>
#include <type_traits>
using namespace std;

int main()
{
    static_assert(
        (
            (!(is_const<match_results<char *>::reference>::value)) && (is_reference<match_results<char *>::reference>::value)), "");
    return 0;
    ;
}
