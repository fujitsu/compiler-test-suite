#include <set>
#include <string>
#include <cassert>

int main()
{
    {  
        
        std::set<std::string> src{{"one"},{"two"},{"three"}};
        
        std::set<std::string>::insert_return_type irt  = src.insert((std::set<std::string>::node_type){});
        
        std::set<std::string> dst{{"one"},{"two"},{"three"}};
        assert(dst == src);
        assert(irt.position == src.end());
        assert(irt.node.empty() == true);
    }
    {
        std::set<std::string> src{{"one"},{"two"},{"three"}};
        std::set<std::string> src1{{"four"}};

        std::set<std::string>::insert_return_type irt  = src.insert(src1.extract("four"));
        
        std::set<std::string> dst{{"one"},{"two"},{"three"},{"four"}};
        assert(src1.empty() == true);
        assert(dst == src);
        assert(irt.node.empty() == true);
        assert(*(irt.position) == "four");

        std::set<std::string> src2{{"one"},{"two"}};
        std::set<std::string>::insert_return_type irt1  = src.insert(src2.extract("one"));
        assert(dst == src);
        assert(irt1.node.empty() == false);
        assert(*(irt1.position) == "one");
    }
}
