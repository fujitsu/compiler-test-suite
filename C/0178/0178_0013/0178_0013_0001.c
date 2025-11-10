int test_func002() __attribute__((deprecated, warn_unused_result));
int test_func005(int __attribute__((deprecated)) param);
int func007(int param);

int *var_002;
int var_005;
int var_006 = 10;
int __attribute__((deprecated)) var_009;
static int __attribute__((deprecated)) var_010;

int test_func002() {
	return 0;
}

int test_func005(int param){
	return param;
}


