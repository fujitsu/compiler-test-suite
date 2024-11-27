#include <stdio.h>

int cmp_integer_values(unsigned long long op_1, unsigned long long op_2)
{
fprintf(stdout, "op_1 = %llx, op_2 = %llx\n", op_1, op_2);
    if (op_1 > op_2) {
fprintf(stdout, "result = 1\n");
    } else if (op_1 < op_2) {
fprintf(stdout, "result = -1\n");
    } else {
fprintf(stdout, "result = 0\n");
    }  
}
int main()
{
	unsigned long long op1 = 0xffffffffffffffffLL; 
	unsigned long long op2 = 0x7fffffffffffffffLL;
	cmp_integer_values(op1, op2);
}
