#ifndef __STDC_NO_ATOMICS__
#include <stdatomic.h>
#endif 

void test() {
#ifndef __STDC_NO_ATOMICS__
    memory_order order = memory_order_relaxed;
    atomic_signal_fence(order);
    
    memory_order order_r  = memory_order_relaxed;
    atomic_signal_fence(order_r);
    
    memory_order order_a =  memory_order_acquire;
    atomic_signal_fence(order_a);
    
    memory_order order_c = memory_order_consume;
    atomic_signal_fence(order_c);
    
    memory_order order_re = memory_order_release;
    atomic_signal_fence(order_re);
    
    memory_order order_ar = memory_order_acq_rel;
    atomic_signal_fence(order_ar);
    
    memory_order order_s = memory_order_seq_cst;
    atomic_signal_fence(order_s);
#endif 
}

int main(int argc, char *argv[]) {
    test();
    return 0;
}
