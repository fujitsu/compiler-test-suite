#ifndef __STDC_NO_ATOMICS__
struct A {
    _Atomic (int) m_a;
};

_Atomic (_Bool) b_a_g = 0;
_Atomic (char)  c_a_g = 1;

_Atomic (signed char) sc_a_g = 1;
_Atomic (short) s_a_g = 1;
_Atomic (int)   i_a_g = -1;
_Atomic (long)  l_a_g = 1;
_Atomic (long long) ll_a_g = 1;

_Atomic (unsigned char)  uc_a_g = 1;
_Atomic (unsigned short) us_a_g = 1;
_Atomic (unsigned int)   ui_a_g = 1;
_Atomic (unsigned long)  ul_a_g = 1;
_Atomic (unsigned long long) ull_a_g = 1;

_Atomic (int *)  ptr_a_g = (int*)0;   

_Atomic (struct A) A_struct_g;
#endif 

void test() {
#ifndef __STDC_NO_ATOMICS__
    _Atomic (_Bool) b_a = 0;
    _Atomic (char)  c_a = 1;
    
    _Atomic (signed char) sc_a = 1;
    _Atomic (short) s_a = 1;
    _Atomic (int)   i_a = -1;
    _Atomic (long)  l_a = 1;
    _Atomic (long long) ll_a = 1;

    _Atomic (unsigned char)  uc_a = 1;
    _Atomic (unsigned short) us_a = 1;
    _Atomic (unsigned int)   ui_a = 1;
    _Atomic (unsigned long)  ul_a = 1;
    _Atomic (unsigned long long) ull_a = 1;
    
    _Atomic (int *)  ptr_a = (int*)0;   
    
    _Atomic (struct A) A_struct;
#endif 
}

int main(int argc, char *argv[]) {
    test();
    return 0;
}
