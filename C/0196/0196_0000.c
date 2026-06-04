/*
    Annex L.L.3/p2
    7.13.2.1/p5     
    EXAMPLE The longjmp function that returns control back to the point of the setjmp invocation
might cause memory associated with a variable length array object to be squandered.
*/

#include <setjmp.h>

jmp_buf buf;
int n = 2;

void h(int n){
    int b[n]; 		    //b may remain allocated
    longjmp(buf, 1); 	//might cause memory loss
}                       //gcc   :no warning,no error.
	                    //clang :no warning,no error.
void f(void){
    int x[n]; 
    setjmp(buf);
    if (n++==100){
        return ;
    }
    h(n);
}

int main(){
    f();
}
