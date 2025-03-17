


#include <string>
#include <cassert>


int main()
{
    {
    typedef std::string S;
    const S s;
    assert(s.front() == 0);
    }
}

