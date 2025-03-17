#include <unordered_map>
#include <string>
#include <cassert>

int main()
{
    {
        std::unordered_map<int,std::string> src{{1,"one"},{2,"two"},{3,"three"}};
        std::unordered_map<int,std::string>::insert_return_type  irt = src.insert((std::unordered_map<int,std::string>::node_type){});

        std::unordered_map<int,std::string> dst{{1,"one"},{2,"two"},{3,"three"}};
        assert(dst==src);
        assert(irt.position == src.end());
        assert(irt.node.empty() == true);
    }
    {
        std::unordered_map<int,std::string> src{{1,"one"},{2,"two"},{3,"three"}};
        std::unordered_map<int,std::string> src1{{1,"one"},{4,"four"}};
        assert(src.get_allocator() == src1.get_allocator());
        std::unordered_map<int,std::string>:: insert_return_type irt = src.insert(src1.extract(4));

        std::unordered_map<int,std::string> dst{{1,"one"},{2,"two"},{3,"three"},{4,"four"}};
        std::unordered_map<int,std::string> src2{{1,"one"}};
        assert(dst == src);
        assert(src1 == src2);
        assert(irt.node.empty() == true);
        assert(irt.position->first == 4);
        assert(irt.position->second == "four");


        std::unordered_map<int,std::string>:: insert_return_type irt1 = src.insert(src1.extract(1));

        assert(src.empty() == false);
        assert(dst == src);
        assert(irt1.node.empty() == false);
        assert(irt1.node.key() == 1);
        assert(irt1.node.mapped() == "one");
        assert(irt1.position->first == 1);
        assert(irt1.position->second == "one");
    }
}
