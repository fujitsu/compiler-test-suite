




#include <string>
#include <cassert>

int main()
{
    {
    typedef std::string S;
    S s(1, '\0');
    assert(s.front() == 0);
    s.clear();
    assert(s.front() == 0);
    }
}