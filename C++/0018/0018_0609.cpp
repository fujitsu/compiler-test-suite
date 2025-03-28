





#include <regex>
#include <cassert>

int main()
{
    std::regex r1("(a([bc]))");
    std::regex r2;
    r2.assign(r1);
    assert(r2.flags() == std::regex::ECMAScript);
    assert(r2.mark_count() == 2);
    assert(std::regex_search("ab", r2));
    
    bool caught = false;
    try { r2.assign("(def", std::regex::extended); }
    catch(std::regex_error &) { caught = true; }
    assert(caught);
    assert(r2.flags() == std::regex::ECMAScript);
    assert(r2.mark_count() == 2);
    assert(std::regex_search("ab", r2));
}
