/*
    Annex L.L.3/p2
    All undefined behavior shall be limited to bounded undefined behavior, except for the
    following which are permitted to result in critical undefined behavior:
    ¡ª  Addition  or  subtraction of a pointer into, or just beyond, an  array object and an 
    integer type produces a result that points just beyond the array object and is used as 
    the operand of a unary * operator that is evaluated
*/

void test(){
    int a[5]={1,2,3,4,5};
    int* b = a + 8;
    int m = *b;             //  gcc  :   no warning, no error.
                            //  clang:   no warning, no error.
}

int main(){
    test();
}

