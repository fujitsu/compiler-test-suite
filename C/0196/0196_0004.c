/*
    Annex L.L.3/p2
    All undefined behavior shall be limited to bounded undefined behavior, except for the
    following which are permitted to result in critical undefined behavior:
    ¡ª  The operand of the unary * operator has an invalid value. 
*/

void test(){
    int a[5]={1,2,3,4,5};
    int b = *&a[8];         //  gcc  : no warning, no error.
                            //  clang: warning.
}

int main(){
    test();
}
