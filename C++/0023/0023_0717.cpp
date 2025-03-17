#include <unordered_set>
#include <string>
#include <cassert>

int main()
{
    {
        std::unordered_set<std::string> src{{"one"},{"two"},{"three"}};

        std::unordered_set<std::string>::node_type nt = src.extract("one");

        std::unordered_set<std::string> dst{{"two"},{"three"}};
        assert(dst == src);
        assert(nt.empty()==false);
        assert(nt.value() == "one");
    }
}
