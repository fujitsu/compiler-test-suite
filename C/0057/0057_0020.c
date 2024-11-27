#ifndef __STDC_NO_ATOMICS__
#include <stdatomic.h>

memory_order order_r_g = memory_order_relaxed;
memory_order order_c_g = memory_order_consume;
memory_order order_a_g = memory_order_acquire;
memory_order order_rs_g = memory_order_release;
memory_order order_ar_g = memory_order_acq_rel;
memory_order order_sc_g = memory_order_seq_cst;

atomic_flag flag_g = ATOMIC_FLAG_INIT;  
#endif 

void test() {
#ifndef __STDC_NO_ATOMICS__
    memory_order order_r = memory_order_relaxed;
    memory_order order_c = memory_order_consume;
    memory_order order_a = memory_order_acquire;
    memory_order order_rs = memory_order_release;
    memory_order order_ar = memory_order_acq_rel;
    memory_order order_sc = memory_order_seq_cst;

    atomic_flag flag = ATOMIC_FLAG_INIT;    
#endif 
}

int main(int argc, char *argv[]) {
    test();
    return 0;
}
 
