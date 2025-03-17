

#include <locale>
#include <cassert>

int main() {
    std::locale l;
    assert(std::isblank(' ', l));
    assert(!std::isblank('<', l));
    assert(!std::isblank('\x8', l));
    assert(!std::isblank('A', l));
    assert(!std::isblank('a', l));
    assert(!std::isblank('z', l));
    assert(!std::isblank('3', l));
    assert(!std::isblank('.', l));
    assert(!std::isblank('f', l));
    assert(!std::isblank('9', l));
    assert(!std::isblank('+', l));
}
