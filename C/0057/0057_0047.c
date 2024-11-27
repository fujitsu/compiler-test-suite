

_Static_assert('a' != 'A', "Failed~");            


void test (){
    _Static_assert('a' != 'A', "Failed~");        
}

union testA{
    _Static_assert('a' != 'A', "Failed~");        
    char c;
    int i;
};

struct testB{
    _Static_assert('a' != 'A', "Failed~");        
    char c;
    int i;
};

int main(){
    test();
}
