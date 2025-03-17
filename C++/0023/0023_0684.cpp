#include <set>
#include <string>
#include <cassert>

int main()
{
    {
        std::multiset<std::string> src{{"one"},{"two"},{"two"},{"three"}};

        std::multiset<std::string> ::node_type nt = src.extract("one");

        std::multiset<std::string> dst1{{"two"},{"two"},{"three"}};
        assert(src == dst1);
        assert(nt.empty()==false);
        assert(nt.value() == "one");
    }
    {
        std::multiset<std::string> src{{"one"},{"two"},{"two"},{"three"}};
        std::multiset<std::string> ::node_type nt1 = src.extract("two");

        std::multiset<std::string> dst2{{"one"},{"two"},{"three"}};
        assert(src == dst2);
        assert(nt1.empty()==false);
        assert(nt1.value()=="two");
    }
    {
        std::multiset<std::string> src{{"one"},{"two"},{"two"},{"three"}};
        std::multiset<std::string> ::node_type nt = src.extract("four");
        std::multiset<std::string> dst{{"one"},{"two"},{"two"},{"three"}};
        assert(nt.empty()==true);
        assert(dst == src);
    }
}
