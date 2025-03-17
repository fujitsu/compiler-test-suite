#include <type_traits>
#include <set>
#include <unordered_set>

int main()
{
   static_assert((std::is_same<std::set<int>::node_type::value_type,int>::value),"");
   static_assert((std::is_same<std::multiset<int>::node_type::value_type,int>::value),"");
   static_assert((std::is_same<std::unordered_set<int>::node_type::value_type,int>::value),"");
   static_assert((std::is_same<std::unordered_multiset<int>::node_type::value_type,int>::value),"");
}
