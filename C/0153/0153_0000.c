#include <stdio.h>
int r10_i4_cast(int i, long double r16)
{
	i = (int)r16;
	return i;
}

long long int r10_i8_cast(long long int  ld, long double r16)
{
	ld = (long long int)r16;
	return ld;
}

unsigned int r10_u4_cast(unsigned int u, long double r16)
{
	u = (unsigned int)r16;
	return u;
}

unsigned long long int r10_u8_cast(unsigned long long int  uld, long double r16)
{
	uld = (unsigned long long int)r16;
	return uld;
}

int r8_i4_cast(int i, double d)
{
	i = (int)d;
	return i;
}

unsigned int r8_u4_cast(unsigned int u, double d)
{
	u = (unsigned int)d;
	return u;
}

long long int r8_i8_cast(long long int ld, double d)
{
	ld = (long long int)d;
	return ld;
}

unsigned long long int r8_u8_cast(unsigned long long int uld, double d)
{
	uld = (unsigned long long int)d;
	return uld;
}

int r4_i4_cast(int i, float f)
{
	i = (int)f;
	return i;
}

long long int r4_i8_cast(long long int ld, float f)
{
	ld = (long long int)f;
	return ld;
}

unsigned int r4_u4_cast(unsigned int u, float f)

{
	u = (unsigned int)f;
	return u;
}

unsigned long long int r4_u8_cast(unsigned long long int uld, float f)
{
	uld = (unsigned long long int)f;
	return uld;
}
int main()
{
	int i, x;
	unsigned int u;
	long long int ld;
	unsigned long long int uld;
	long double r16;
	float f;
	
	long double r10_i4_input[13] = { -2147483648.0, -2147483647.0, -2147483646.0,
																-3.0, -2.0, -1.0, 0.0, 1.0, 2.0, 3.0,
																2147483645.0, 2147483646.0, 2147483647.0 }; 
	long double r10_i8_input[10] = {
		281474976710655.0,
		281474976710654.0,
		281474976710653.0,
		140737488355328.0,
		140737488355327.0,
		140737488355326.0,
		3.0,
		2.0,
		1.0,
		0.0
	};

	long double r10_u4_input[10] = { 		
		4294967295,
		4294967294,
		4294967293,
		2147483650,
		2147483649,
		2147483648,
		3,
		2,
		1,
		0
	};

	long double r10_u8_input[10] = {
		281474976710655.0,
		281474976710654.0,
		281474976710653.0,
		140737488355328.0,
		140737488355327.0,
		140737488355326.0,
		3.0,
		2.0,
		1.0,
		0.0
	};

	double r8_i4_input[13] = { -2147483648.0, -2147483647.0, -2147483646.0,
                -3.0, -2.0, -1.0, 0.0, 1.0, 2.0, 3.0,
								2147483645.0, 2147483646.0, 2147483647.0 }; 

	double r8_i8_input[10]={
		281474976710655.0,
		281474976710654.0,
		281474976710653.0,
		140737488355328.0,
		140737488355327.0,
		140737488355326.0,
		3.0,
		2.0,
		1.0,
		0.0
	};

	double r8_u4_input[10] = {
		4294967295,
		4294967294,
		4294967293,
		2147483650,
		2147483649,
		2147483648,
		3,
		2,
		1,
		0,
	};

	double r8_u8_input[10]={
		281474976710655.0,
		281474976710654.0,
		281474976710653.0,
		140737488355328.0,
		140737488355327.0,
		140737488355326.0,
		3.0,
		2.0,
		1.0,
		0.0
	};

	float r4_input[10] = { 		
		999999.0,
		999998.0,
		999997.0,
		500000.0,
		499999.0,
		499998.0,
		3.0, 2.0, 1.0, 0.0,
	}; 

	int r10_i4_result[13]={
		0x80000000,
		0x80000001,
		0x80000002,
		0xfffffffd,
		0xfffffffe,
		0xffffffff,
		0x0,
		0x1,
		0x2,
		0x3,
		0x7ffffffd,
		0x7ffffffe,
		0x7fffffff,
	};

	long long int r10_i8_result[10]={
		0xffffffffffff,
		0xfffffffffffe,
		0xfffffffffffd,
		0x800000000000,
		0x7fffffffffff,
		0x7ffffffffffe,
		0x3,
		0x2,
		0x1,
		0x0
	};

	unsigned int r10_u4_result[10]={
		0xffffffff,
		0xfffffffe,
		0xfffffffd,
		0x80000002,
		0x80000001,
		0x80000000,
		0x3,
		0x2,
		0x1,
		0x0,
	};

	unsigned long long int r10_u8_result[10]={
		0xffffffffffff,
		0xfffffffffffe,
		0xfffffffffffd,
		0x800000000000,
		0x7fffffffffff,
		0x7ffffffffffe,
		0x3,
		0x2,
		0x1,
		0x0
	};

	int r8_i4_result[13]={
		0x80000000,
		0x80000001,
		0x80000002,
		0xfffffffd,
		0xfffffffe,
		0xffffffff,
		0x0,
		0x1,
		0x2,
		0x3,
		0x7ffffffd,
		0x7ffffffe,
		0x7fffffff,
	};

	long long int r8_i8_result[10]={
		0xffffffffffff,
		0xfffffffffffe,
		0xfffffffffffd,
		0x800000000000,
		0x7fffffffffff,
		0x7ffffffffffe,
		0x3,
		0x2,
		0x1,
		0x0
	};

	unsigned int r8_u4_result[10]={
		0xffffffff,
		0xfffffffe,
		0xfffffffd,
		0x80000002,
		0x80000001,
		0x80000000,
		0x3,
		0x2,
		0x1,
		0x0,
	};

	unsigned long long int r8_u8_result[10]={
		0xffffffffffff,
		0xfffffffffffe,
		0xfffffffffffd,
		0x800000000000,
		0x7fffffffffff,
		0x7ffffffffffe,
		0x3,
		0x2,
		0x1,
		0x0
	};

	int r4_i4_result[10]={
		0xf423f,
		0xf423e,
		0xf423d,
		0x7a120,
		0x7a11f,
		0x7a11e,
		0x3,
		0x2,
		0x1,
		0x0
	};

	long r4_i8_result[10]={
		0xf423f,
		0xf423e,
		0xf423d,
		0x7a120,
		0x7a11f,
		0x7a11e,
		0x3,
		0x2,
		0x1,
		0x0
	};

	unsigned int r4_u4_result[10]={
		0xf423f,
		0xf423e,
		0xf423d,
		0x7a120,
		0x7a11f,
		0x7a11e,
		0x3,
		0x2,
		0x1,
		0x0
	};

	unsigned long long int r4_u8_result[10]={
		0xf423f,
		0xf423e,
		0xf423d,
		0x7a120,
		0x7a11f,
		0x7a11e,
		0x3,
		0x2,
		0x1,
		0x0
	};

	
	
	printf("*** r10 -> i4 test STARTED ***\n");
	for(x=0;x<13;x++){
		i = r10_i4_cast(i, r10_i4_input[x]);

		if(i == r10_i4_result[x]){
		}
		else{
			printf("NG ");
			printf("input[%d] ", x);
			printf("i=%d\n", i);
		}
	}
	printf("*** r10 -> i4 test FINISHED ***\n");


	
	printf("*** r10 -> i8 test STARTED ***\n");
	for(x=0;x<10;x++){
		ld = r10_i8_cast(ld, r10_i8_input[x]);

		if(ld == r10_i8_result[x]){
		}
		else{
			printf("NG ");
			printf("input[%d] ", x);
			printf("ld=%lld\n", ld);
		}
	}
	printf("*** r10 -> i8 test FINISHED ***\n");

	
	printf("*** r10 -> u4 test STARTED ***\n");
	for(x=0;x<10;x++){
		u = r10_u4_cast(u, r10_u4_input[x]);

		if(u == r10_u4_result[x]){
		}
		else{
			printf("NG ");
			printf("input[%d] ", x);
			printf("u=%u\n", u);
		}
	}
	printf("*** r10 -> u4 test FINISHED ***\n");

	
	printf("*** r10 -> u8 test STARTED ***\n");
	for(x=0;x<10;x++){
		uld = r10_u8_cast(uld, r10_u8_input[x]);

		
		if(uld == r10_u8_result[x]){
		}
		else{
			printf("NG ");
			printf("input[%d] ", x);
			printf("uld=%lu\n", uld);
		}
	}
	printf("*** r10 -> u8 test FINISHED ***\n");

	
	printf("*** r8 -> i4 test STARTED ***\n");
	for(x=0;x<13;x++){
		i = r8_i4_cast(i, r8_i4_input[x]);

		if(i == r8_i4_result[x]){
		}
		else{
			printf("NG ");
			printf("input[%d] ", x);
			printf("i=%d\n", i);
		}
	}
	printf("*** r8 -> i4 test FINISHED ***\n");


	
	printf("*** r8 -> i8 test STARTED ***\n");
	for(x=0;x<10;x++){
		ld = r8_i8_cast(ld, r8_i8_input[x]);

		if(ld == r8_i8_result[x]){
		}
		else{
			printf("NG ");
			printf("input[%d] ", x);
			printf("ld=%lld\n", ld);
		}
	}
	printf("*** r8 -> i8 test FINISHED ***\n");

	
	printf("*** r8 -> u4 test STARTED ***\n");
	for(x=0;x<10;x++){
		u = r8_u4_cast(u, r8_u4_input[x]);

		if(u == r8_u4_result[x]){
		}
		else{
			printf("NG ");
			printf("input[%d] ", x);
			printf("u=%u\n", u);
		}
	}
	printf("*** r8 -> u4 test FINISHED ***\n");

	
	printf("*** r8 -> u8 test STARTED ***\n");
	for(x=0;x<10;x++){
		uld = r8_u8_cast(uld, r8_u8_input[x]);

		if(uld == r8_u8_result[x]){
		}
		else{ 
			printf("NG ");
			printf("r8_input[%d] ", x);
			printf("uld=%lu\n", uld);
		}
	}
	printf("*** r8 -> u8 test FINISHED ***\n");

	
	printf("*** r4 -> i4 test STARTED ***\n");
	for(x=0;x<10;x++){
		i = r4_i4_cast(i, r4_input[x]);

		if(i == r4_i4_result[x]){
		}
		else{
			printf("NG ");
			printf("input[%d] ", x);
			printf("i=%d\n", i);
		}
	}
	printf("*** r4 -> i4 test FINISHED ***\n");

	
	printf("*** r4 -> i8 test STARTED ***\n");
	for(x=0;x<10;x++){
		ld = r4_i8_cast(ld, r4_input[x]);

		if(ld == r4_i8_result[x]){
		}
		else{
			printf("NG ");
			printf("input[%d] ", x);
			printf("ld=%lld\n", ld);
		}
	}
	printf("*** r4 -> i8 test FINISHED ***\n");

	
	printf("*** r4 -> u4 test STARTED ***\n");
	for(x=0;x<10;x++){
		u = r4_u4_cast(u, r4_input[x]);

		if(u == r4_u4_result[x]){
		}
		else{
			printf("NG ");
			printf("input[%d] ", x);
			printf("u=%u\n", u);
		}
	}
	printf("*** r4 -> u4 test FINISHED ***\n");

	
	printf("*** r4 -> u8 test STARTED ***\n");
	for(x=0;x<10;x++){
		uld = r4_u8_cast(uld, r4_input[x]);

		if(uld == r4_u8_result[x]){
		}
		else{
			printf("NG ");
			printf("input[%d] ", x);
			printf("uld=%lu\n", uld);
		}
	}
	printf("*** r4 -> u8 test FINISHED ***\n");
}




