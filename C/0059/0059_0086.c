



#include <stdio.h>
#include "000.h"
void func() __attribute__((no_check_memory_usage));
void func() {
}
int main() {
	header("no_check_memory_usage001n", "no_check_memory_usage");
	func();
	header("no_check_memory_usage001n", "no_check_memory_usage");
	return 0;
}

