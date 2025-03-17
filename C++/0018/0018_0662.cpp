




#include <string>
#include <cassert>
#include <iostream>
int main() {
    typedef std::string S;
    S s;
    s.append("abc", 0);
    s.append(nullptr, 0);
    
    s.append("abc", 0);
}
