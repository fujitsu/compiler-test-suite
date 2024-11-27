
#ifndef __STDC_NO_ATOMICS__
#include <stdatomic.h>

atomic_bool  b_a_g;      

atomic_char    c_a_g;    
atomic_schar   sc_a_g;  
atomic_uchar   uc_a_g;

atomic_short   s_a_g;
atomic_ushort  us_a_g;  
atomic_int     i_a_g; 
atomic_uint    ui_a_g;  
atomic_long    l_a_g; 
atomic_ulong   ul_a_g;  
atomic_llong   ll_a_g; 
atomic_ullong  ull_a_g;

atomic_char16_t  c16_a_g;
atomic_char32_t  c32_a_g;
atomic_wchar_t   wc_a_g;

atomic_int_least8_t    i8_a_g;
atomic_uint_least8_t   ui8_a_g;
atomic_int_least16_t   i16_a_g;
atomic_uint_least16_t  ui16_a_g;
atomic_int_least32_t   i32_a_g;
atomic_uint_least32_t  ui32_a_g;
atomic_int_least64_t   i64_a_g;
atomic_uint_least64_t  ui64_a_g;

atomic_int_fast8_t     i_f8_a_g;
atomic_uint_fast8_t    ui_f8_a_g;
atomic_int_fast16_t    i_f16_a_g;
atomic_uint_fast16_t   ui_f16_a_g;
atomic_int_fast32_t    i_f32_a_g;
atomic_uint_fast32_t   ui_f32_a_g;
atomic_int_fast64_t    i_f64_a_g;
atomic_uint_fast64_t   ui_f64_a_g;

atomic_intptr_t   intptr_a_g;  
atomic_uintptr_t  uintptr_a_g;

atomic_size_t     size_t_a_g;
atomic_ptrdiff_t  ptrdiff_t_a_g;
atomic_intmax_t   intmax_t_a_g;
atomic_uintmax_t  uintmax_t_a_g;
#endif 
    
void test() {
#ifndef __STDC_NO_ATOMICS__
    atomic_bool  b_a;      

    atomic_char    c_a;    
    atomic_schar   sc_a;  
    atomic_uchar   uc_a;
    
    atomic_short   s_a;
    atomic_ushort  us_a;  
    atomic_int     i_a; 
    atomic_uint    ui_a;  
    atomic_long    l_a; 
    atomic_ulong   ul_a;  
    atomic_llong   ll_a; 
    atomic_ullong  ull_a;
    
    atomic_char16_t  c16_a;
    atomic_char32_t  c32_a;
    atomic_wchar_t   wc_a;
    
    atomic_int_least8_t    i8_a;
    atomic_uint_least8_t   ui8_a;
    atomic_int_least16_t   i16_a;
    atomic_uint_least16_t  ui16_a;
    atomic_int_least32_t   i32_a;
    atomic_uint_least32_t  ui32_a;
    atomic_int_least64_t   i64_a;
    atomic_uint_least64_t  ui64_a;
    
    atomic_int_fast8_t     i_f8_a;
    atomic_uint_fast8_t    ui_f8_a;
    atomic_int_fast16_t    i_f16_a;
    atomic_uint_fast16_t   ui_f16_a;
    atomic_int_fast32_t    i_f32_a;
    atomic_uint_fast32_t   ui_f32_a;
    atomic_int_fast64_t    i_f64_a;
    atomic_uint_fast64_t   ui_f64_a;
    
    atomic_intptr_t   intptr_a;  
    atomic_uintptr_t  uintptr_a;
    
    atomic_size_t     size_t_a;
    atomic_ptrdiff_t  ptrdiff_t_a;
    atomic_intmax_t   intmax_t_a;
    atomic_uintmax_t  uintmax_t_a;
#endif 
}

int main(int argc, char *argv[]) {
    test();
    return 0;
}
