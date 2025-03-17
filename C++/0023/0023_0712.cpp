#include <unordered_set>
#include <string>
#include <cassert>

int main()
{
    {
        std::unordered_multiset<std::string> src{{"one"},{"two"},{"two"},{"three"}};

        std::unordered_multiset<std::string> ::node_type nt = src.extract(src.find("one"));

        std::unordered_multiset<std::string> dst1{{"two"},{"two"},{"three"}};
        assert(src == dst1);
        assert(nt.empty()==false);
        assert(nt.value() == "one");

        std::unordered_multiset<std::string> ::node_type nt1 = src.extract(src.find("two"));

        std::unordered_multiset<std::string> dst2{{"two"},{"three"}};
        assert(src == dst2);
        assert(nt1.empty()==false);
        assert(nt1.value()=="two");
    }
}
