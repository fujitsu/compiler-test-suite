





#include <string>
#include <cassert>

int main() {
    char s1[] = {'4', '5', '6'};
    char s2[] = {'4', '5', '6'};

    std::char_traits<char>::copy(s2, s2, 3);
    assert(std::equal(s2, s2+sizeof(s2)/sizeof(s2[0]), s1));
}
