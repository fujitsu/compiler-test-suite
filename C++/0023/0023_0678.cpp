#include <map>
#include <string>
#include <cassert>

int main()
{
    {
        std::map<int,std::string> src{{1,"one"},{2,"two"},{3,"three"}};        
        std::map<int,std::string>:: insert_return_type irt = src.insert((std::map<int,std::string>::node_type){});
        std::map<int,std::string> dst{{1,"one"},{2,"two"},{3,"three"}};
        assert(dst == src);
        assert(irt.position == src.end());
        assert(irt.node.empty() == true);
    }
    {
        std::map<int,std::string> src{{1,"one"},{2,"two"},{3,"three"}};
        std::map<int,std::string> src1{{1,"one"},{4,"four"}};
        assert(src.get_allocator() == src1.get_allocator());
        std::map<int,std::string>:: insert_return_type irt = src.insert(src1.extract(4));
        
        std::map<int,std::string> dst{{1,"one"},{2,"two"},{3,"three"},{4,"four"}};
        std::map<int,std::string> src2{{1,"one"}};
        assert(dst == src);
        assert(src1 == src2);
        assert(irt.node.empty() == true);
        assert(irt.position->first == 4);
        assert(irt.position->second == "four");

        
        std::map<int,std::string>:: insert_return_type irt1 = src.insert(src1.extract(1));
        
        assert(src.empty() == false);
        assert(dst == src);
        assert(irt1.node.empty() == false);
        assert(irt1.node.key() == 1);
        assert(irt1.node.mapped() == "one");
        assert(irt1.position->first == 1);
        assert(irt1.position->second == "one");
        
        auto nh = dst.extract(4);
        nh.key() = 5;
        dst.insert(move(nh));
        std::map<int,std::string> fdst{{1,"one"},{2,"two"},{3,"three"},{5,"four"}};
        assert(fdst == dst);
    }

}
