#include <stdio.h>
#include"004.h"

void test002(){
	union parent_tag {
		struct {
    		int int_var;
			char char_var;
			struct {
				int int_var2;
				char char_var2;
				struct {
					int int_var3;
					char char_var3;
					struct {
						int int_var4;
						char char_var4;
						struct {
							int int_var5;
							char char_var5;
						};
					};
				};
			};
	  	};
		long long_var;
	} parent;
	parent.int_var5 = 2;
	ichck(2, 2, parent.int_var5, "unnamed_struct No.2 NG\n");
}

void test004(){
	union parent_tag {
		union {
    		int int_var;
			char char_var;
			union {
				int int_var2;
				char char_var2;
				union {
					int int_var3;
					char char_var3;
					union {
						int int_var4;
						char char_var4;
						union {
							int int_var5;
							char char_var5;
						};
					};
				};
			};
	  	};
	} parent;
	parent.int_var5 = 4;
	ichck(4, 4, parent.int_var5, "unnamed_struct No.4 NG\n");
}

void test006(){
	union parent_tag {
		struct {
    		int int_var;
			char char_var;
	  	};
		long long_var;
	} parent;
	parent.int_var = 6;
	ichck(6, 6, parent.int_var, "unnamed_struct No.6 NG\n");
}

void test007(){
	struct parent_tag {
		struct {
    		int int_var1;
			char char_var1;
			struct {
				int int_var2;
				long long_var2;
			};
	  	};
		long long_var;
	} parent;
	parent.int_var1 = 7;
	ichck(7, 7, parent.int_var1, "unnamed_struct No.7 NG\n");
}

void test008(){
	struct parent_tag {
		struct {
    		int int_var1;
			char char_var1;
	  	} str_vat1;
		union {
    		int int_var2;
			char char_var2;
	  	} uni_var1;
	} parent;
	parent.uni_var1.int_var2 = 8;
	ichck(8, 8, parent.uni_var1.int_var2, "unnamed_struct No.8 NG\n");
}

void test010(){
	struct parent_tag {
		union {
    		int int_var;
			char char_var;
	  	} child;
		long long_var;
	} parent;
	parent.child.int_var = 10;
	ichck(10, 10, parent.child.int_var, "unnamed_struct No.10 NG\n");
}

void test011(){
	struct parent_tag {
		struct {
    		int int_var1;
			char char_var1;
	  	};
		union {
    		int int_var2;
			char char_var2;
	  	};
		long long_var;
	} parent;
	parent.int_var2 = 11;
	ichck(11, 11, parent.int_var2, "unnamed_struct No.11 NG\n");
}

int main() {

	header("GNU unnamed_struct","Gnu unnamed struct test");

	test002();
	test004();
	test006();
	test007();
	test008();
	test010();
	test011();

	header("GNU unnamed_struct","Gnu unnamed struct test");
} 
