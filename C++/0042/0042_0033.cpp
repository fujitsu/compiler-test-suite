#include <cstring>
#include <cassert>

#define hash_hash # ## #
#define mkstr(a) # a
#define in_between(a) mkstr(a)
#define join(c, d) in_between(c hash_hash d)
                       
void test(){
    char p[] = join(x, y);  
                            
    assert(!strcmp(p, "x ## y"));
}
                       
int main(){
    test();
}                       