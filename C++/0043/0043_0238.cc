#include <iostream>
#include <string>
#include <vector>

union U
{
    std::string str;      
    std::vector<int> vec; 

    
    
    U() { }
    ~U() { }
} ;


int main()
{
    U u;

    std::vector<int> v;
    std::cout << "v.size():    " << v.size() << std::endl; 
    

    new (&u.str) std::string("hello"); 
    std::cout << u.str << std::endl;
    u.str.~basic_string();

    new (&u.vec ) std::vector<int> {1, 2, 3}; 
    for (auto i : u.vec) {
        std::cout << i << std::endl;
    }
    u.vec.~vector();

}
