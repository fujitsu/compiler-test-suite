#include <string>
#include <cassert>

int main()
{
    std::string a="??=";
    assert(a!="#");
    
    std::string c="??/";
    assert(c!="\\");
    
    std::string e="??(";
    assert(e!="[");
    
    std::string g="??)";
    assert(g!="]");
    
    std::string i="??'";
    assert(i!="^");
    
    std::string k="??<";
    assert(k!="{");
    
    std::string m="??>";
    assert(m!="}");
    
    std::string o="??-";
    assert(o!="~");
    
    std::string r="??!";
    assert(r!="|");
}
