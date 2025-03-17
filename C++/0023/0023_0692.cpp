#include <type_traits>
#include <map>
#include <unordered_map>

int main()
{
   static_assert((std::is_same<std::map<int,char>::node_type::key_type,int>::value),"");
   static_assert((std::is_same<std::multimap<int,char>::node_type::key_type,int>::value),"");
   static_assert((std::is_same<std::unordered_map<int,char>::node_type::key_type,int>::value),"");
   static_assert((std::is_same<std::unordered_multimap<int,char>::node_type::key_type,int>::value),"");
}
