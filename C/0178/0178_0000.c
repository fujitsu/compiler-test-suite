#include<stdio.h>
#include"004.h"

int main()
{
	header("GNU ","__attribute__ alignof");

	__attribute__((aligned(1))) char char_var0;
	ichck(1, 1, __alignof(char_var0), "test No.1-1 NG\n ");
	ichck(1, sizeof(char), sizeof(char_var0), "test No.1-2 NG\n ");

	unsigned char char_var1 __attribute__((aligned(2)));
	ichck(2, 2, __alignof(char_var1), "test No.2-1 NG\n ");
	ichck(2, sizeof(char), sizeof(char_var1), "test No.2-2 NG\n ");

	__attribute__((aligned(4))) char char_var2;
	ichck(3, 4, __alignof(char_var2), "test No.3-1 NG\n ");
	ichck(3, sizeof(char), sizeof(char_var2), "test No.3-2 NG\n ");

	unsigned char char_var3 __attribute__((aligned(8)));
	ichck(4, 8, __alignof(char_var3), "test No.4-1 NG\n ");
	ichck(4, sizeof(char), sizeof(char_var3), "test No.4-2 NG\n ");

	__attribute__((aligned(16))) char char_var4;
	ichck(5, 16, __alignof(char_var4), "test No.5-1 NG\n ");
	ichck(5, sizeof(char), sizeof(char_var4), "test No.5-2 NG\n ");

#if !__sparc__
	unsigned char char_var5 __attribute__((aligned(32)));
	ichck(6, 32, __alignof(char_var5), "test No.6-1 NG\n ");
	ichck(6, sizeof(char), sizeof(char_var5), "test No.6-2 NG\n ");

	__attribute__((aligned(64))) char char_var6;
	ichck(7, 64, __alignof(char_var6), "test No.7-1 NG\n ");
	ichck(7, sizeof(char), sizeof(char_var6), "test No.7-2 NG\n ");

	unsigned char char_var7 __attribute__((aligned(128)));
	ichck(8, 128, __alignof(char_var7), "test No.8-1 NG\n ");
	ichck(8, sizeof(char), sizeof(char_var7), "test No.8-2 NG\n ");

	__attribute__((aligned(256))) char char_var8;
	ichck(9, 256, __alignof(char_var8), "test No.9-1 NG\n ");
	ichck(9, sizeof(char), sizeof(char_var8), "test No.9-2 NG\n ");

	unsigned char char_var9 __attribute__((aligned(512)));
	ichck(10, 512, __alignof(char_var9), "test No.10-1 NG\n ");
	ichck(10, sizeof(char), sizeof(char_var9), "test No.10-2 NG\n ");

	__attribute__((aligned(1024))) char char_var10;
	ichck(11, 1024, __alignof(char_var10), "test No.11-1 NG\n ");
	ichck(11, sizeof(char), sizeof(char_var10), "test No.11-2 NG\n ");

	unsigned char char_var11 __attribute__((aligned(16384)));
	ichck(12, 16384, __alignof(char_var11), "test No.12-1 NG\n ");
	ichck(12, sizeof(char), sizeof(char_var11), "test No.12-2 NG\n ");
#endif

	__attribute__((aligned(1))) short short_var0;
	ichck(14, 1, __alignof(short_var0), "test No.14-1 NG\n ");
	ichck(14, sizeof(short), sizeof(short_var0), "test No.14-2 NG\n ");

	unsigned short short_var1 __attribute__((aligned(2)));
	ichck(15, 2, __alignof(short_var1), "test No.15-1 NG\n ");
	ichck(15, sizeof(short), sizeof(short_var1), "test No.15-2 NG\n ");

	__attribute__((aligned(4))) short short_var2;
	ichck(16, 4, __alignof(short_var2), "test No.16-1 NG\n ");
	ichck(16, sizeof(short), sizeof(short_var2), "test No.16-2 NG\n ");

	unsigned short short_var3 __attribute__((aligned(8)));
	ichck(17, 8, __alignof(short_var3), "test No.17-1 NG\n ");
	ichck(17, sizeof(short), sizeof(short_var3), "test No.17-2 NG\n ");

	__attribute__((aligned(16))) short short_var4;
	ichck(18, 16, __alignof(short_var4), "test No.18-1 NG\n ");
	ichck(18, sizeof(short), sizeof(short_var4), "test No.18-2 NG\n ");

#if !__sparc__
	unsigned short short_var5 __attribute__((aligned(32)));
	ichck(19, 32, __alignof(short_var5), "test No.19-1 NG\n ");
	ichck(19, sizeof(short), sizeof(short_var5), "test No.19-2 NG\n ");

	__attribute__((aligned(64))) short short_var6;
	ichck(20, 64, __alignof(short_var6), "test No.20-1 NG\n ");
	ichck(20, sizeof(short), sizeof(short_var6), "test No.20-2 NG\n ");

	unsigned short short_var7 __attribute__((aligned(128)));
	ichck(21, 128, __alignof(short_var7), "test No.21-1 NG\n ");
	ichck(21, sizeof(short), sizeof(short_var7), "test No.21-2 NG\n ");

	__attribute__((aligned(256))) short short_var8;
	ichck(22, 256, __alignof(short_var8), "test No.22-1 NG\n ");
	ichck(22, sizeof(short), sizeof(short_var8), "test No.22-2 NG\n ");

	unsigned short short_var9 __attribute__((aligned(512)));
	ichck(23, 512, __alignof(short_var9), "test No.23-1 NG\n ");
	ichck(23, sizeof(short), sizeof(short_var9), "test No.23-2 NG\n ");

	__attribute__((aligned(1024))) short short_var10;
	ichck(24, 1024, __alignof(short_var10), "test No.24-1 NG\n ");
	ichck(24, sizeof(short), sizeof(short_var10), "test No.24-2 NG\n ");

	unsigned short short_var11 __attribute__((aligned(16384)));
	ichck(25, 16384, __alignof(short_var11), "test No.25-1 NG\n ");
	ichck(25, sizeof(short), sizeof(short_var11), "test No.25-2 NG\n ");
#endif

	__attribute__((aligned(1))) int int_var0;
	ichck(27, 1, __alignof(int_var0), "test No.27-1 NG\n ");
	ichck(27, sizeof(int), sizeof(int_var0), "test No.27-2 NG\n ");

	unsigned int int_var1 __attribute__((aligned(2)));
	ichck(28, 2, __alignof(int_var1), "test No.28-1 NG\n ");
	ichck(28, sizeof(int), sizeof(int_var1), "test No.28-2 NG\n ");

	__attribute__((aligned(4))) int int_var2;
	ichck(29, 4, __alignof(int_var2), "test No.29-1 NG\n ");
	ichck(29, sizeof(int), sizeof(int_var2), "test No.29-2 NG\n ");

	unsigned int int_var3 __attribute__((aligned(8)));
	ichck(30, 8, __alignof(int_var3), "test No.30-1 NG\n ");
	ichck(30, sizeof(int), sizeof(int_var3), "test No.30-2 NG\n ");

	__attribute__((aligned(16))) int int_var4;
	ichck(31, 16, __alignof(int_var4), "test No.31-1 NG\n ");
	ichck(31, sizeof(int), sizeof(int_var4), "test No.31-2 NG\n ");

#if !__sparc__
	unsigned int int_var5 __attribute__((aligned(32)));
	ichck(32, 32, __alignof(int_var5), "test No.32-1 NG\n ");
	ichck(32, sizeof(int), sizeof(int_var5), "test No.32-2 NG\n ");

	__attribute__((aligned(64))) int int_var6;
	ichck(33, 64, __alignof(int_var6), "test No.33-1 NG\n ");
	ichck(33, sizeof(int), sizeof(int_var6), "test No.33-2 NG\n ");

	unsigned int int_var7 __attribute__((aligned(128)));
	ichck(34, 128, __alignof(int_var7), "test No.34-1 NG\n ");
	ichck(34, sizeof(int), sizeof(int_var7), "test No.34-2 NG\n ");

	__attribute__((aligned(256))) int int_var8;
	ichck(35, 256, __alignof(int_var8), "test No.35-1 NG\n ");
	ichck(35, sizeof(int), sizeof(int_var8), "test No.35-2 NG\n ");

	unsigned int int_var9 __attribute__((aligned(512)));
	ichck(36, 512, __alignof(int_var9), "test No.36-1 NG\n ");
	ichck(36, sizeof(int), sizeof(int_var9), "test No.36-2 NG\n ");

	__attribute__((aligned(1024))) int int_var10;
	ichck(37, 1024, __alignof(int_var10), "test No.37-1 NG\n ");
	ichck(37, sizeof(int), sizeof(int_var10), "test No.37-2 NG\n ");

	unsigned int int_var11 __attribute__((aligned(16384)));
	ichck(38, 16384, __alignof(int_var11), "test No.38-1 NG\n ");
	ichck(38, sizeof(int), sizeof(int_var11), "test No.38-2 NG\n ");
#endif

	__attribute__((aligned(1))) double double_var0;
	ichck(40, 1, __alignof(double_var0), "test No.40-1 NG\n ");
	ichck(40, sizeof(double), sizeof(double_var0), "test No.40-2 NG\n ");

	double double_var1 __attribute__((aligned(2)));
	ichck(41, 2, __alignof(double_var1), "test No.41-1 NG\n ");
	ichck(41, sizeof(double), sizeof(double_var1), "test No.41-2 NG\n ");

	__attribute__((aligned(4))) double double_var2;
	ichck(42, 4, __alignof(double_var2), "test No.42-1 NG\n ");
	ichck(42, sizeof(double), sizeof(double_var2), "test No.42-2 NG\n ");

	double double_var3 __attribute__((aligned(8)));
	ichck(43, 8, __alignof(double_var3), "test No.43-1 NG\n ");
	ichck(43, sizeof(double), sizeof(double_var3), "test No.43-2 NG\n ");

	__attribute__((aligned(16))) double double_var4;
	ichck(44, 16, __alignof(double_var4), "test No.44-1 NG\n ");
	ichck(44, sizeof(double), sizeof(double_var4), "test No.44-2 NG\n ");

#if !__sparc__
	double double_var5 __attribute__((aligned(32)));
	ichck(45, 32, __alignof(double_var5), "test No.45-1 NG\n ");
	ichck(45, sizeof(double), sizeof(double_var5), "test No.45-2 NG\n ");

	__attribute__((aligned(64))) double double_var6;
	ichck(46, 64, __alignof(double_var6), "test No.46-1 NG\n ");
	ichck(46, sizeof(double), sizeof(double_var6), "test No.46-2 NG\n ");

	double double_var7 __attribute__((aligned(128)));
	ichck(47, 128, __alignof(double_var7), "test No.47-1 NG\n ");
	ichck(47, sizeof(double), sizeof(double_var7), "test No.47-2 NG\n ");

	__attribute__((aligned(256))) double double_var8;
	ichck(48, 256, __alignof(double_var8), "test No.48-1 NG\n ");
	ichck(48, sizeof(double), sizeof(double_var8), "test No.48-2 NG\n ");

	double double_var9 __attribute__((aligned(512)));
	ichck(49, 512, __alignof(double_var9), "test No.49-1 NG\n ");
	ichck(49, sizeof(double), sizeof(double_var9), "test No.49-2 NG\n ");

	__attribute__((aligned(1024))) double double_var10;
	ichck(50, 1024, __alignof(double_var10), "test No.50-1 NG\n ");
	ichck(50, sizeof(double), sizeof(double_var10), "test No.50-2 NG\n ");

	double double_var11 __attribute__((aligned(16384)));
	ichck(51, 16384, __alignof(double_var11), "test No.51-1 NG\n ");
	ichck(51, sizeof(double), sizeof(double_var11), "test No.51-2 NG\n ");
#endif

	__attribute__((aligned(1))) float float_var0;
	ichck(53, 1, __alignof(float_var0), "test No.53-1 NG\n ");
	ichck(53, sizeof(float), sizeof(float_var0), "test No.53-2 NG\n ");

	float float_var1 __attribute__((aligned(2)));
	ichck(54, 2, __alignof(float_var1), "test No.54-1 NG\n ");
	ichck(54, sizeof(float), sizeof(float_var1), "test No.54-2 NG\n ");

	__attribute__((aligned(4))) float float_var2;
	ichck(55, 4, __alignof(float_var2), "test No.55-1 NG\n ");
	ichck(55, sizeof(float), sizeof(float_var2), "test No.55-2 NG\n ");

	float float_var3 __attribute__((aligned(8)));
	ichck(56, 8, __alignof(float_var3), "test No.56-1 NG\n ");
	ichck(56, sizeof(float), sizeof(float_var3), "test No.56-2 NG\n ");

	__attribute__((aligned(16))) float float_var4;
	ichck(57, 16, __alignof(float_var4), "test No.57-1 NG\n ");
	ichck(57, sizeof(float), sizeof(float_var4), "test No.57-2 NG\n ");

#if !__sparc__
	float float_var5 __attribute__((aligned(32)));
	ichck(58, 32, __alignof(float_var5), "test No.58-1 NG\n ");
	ichck(58, sizeof(float), sizeof(float_var5), "test No.58-2 NG\n ");

	__attribute__((aligned(64))) float float_var6;
	ichck(59, 64, __alignof(float_var6), "test No.59-1 NG\n ");
	ichck(59, sizeof(float), sizeof(float_var6), "test No.59-2 NG\n ");

	float float_var7 __attribute__((aligned(128)));
	ichck(60, 128, __alignof(float_var7), "test No.60-1 NG\n ");
	ichck(60, sizeof(float), sizeof(float_var7), "test No.60-2 NG\n ");

	__attribute__((aligned(256))) float float_var8;
	ichck(61, 256, __alignof(float_var8), "test No.61-1 NG\n ");
	ichck(61, sizeof(float), sizeof(float_var8), "test No.61-2 NG\n ");

	float float_var9 __attribute__((aligned(512)));
	ichck(62, 512, __alignof(float_var9), "test No.62-1 NG\n ");
	ichck(62, sizeof(float), sizeof(float_var9), "test No.62-2 NG\n ");

	__attribute__((aligned(1024))) float float_var10;
	ichck(63, 1024, __alignof(float_var10), "test No.63-1 NG\n ");
	ichck(63, sizeof(float), sizeof(float_var10), "test No.63-2 NG\n ");

	float float_var11 __attribute__((aligned(16384)));
	ichck(64, 16384, __alignof(float_var11), "test No.64-1 NG\n ");
	ichck(64, sizeof(float), sizeof(float_var11), "test No.64-2 NG\n ");
#endif

	__attribute__((aligned(1))) _Bool _Bool_var0;
	ichck(66, 1, __alignof(_Bool_var0), "test No.66-1 NG\n ");
	ichck(66, sizeof(_Bool), sizeof(_Bool_var0), "test No.66-2 NG\n ");

	_Bool _Bool_var1 __attribute__((aligned(2)));
	ichck(67, 2, __alignof(_Bool_var1), "test No.67-1 NG\n ");
	ichck(67, sizeof(_Bool), sizeof(_Bool_var1), "test No.67-2 NG\n ");

	__attribute__((aligned(4))) _Bool _Bool_var2;
	ichck(68, 4, __alignof(_Bool_var2), "test No.68-1 NG\n ");
	ichck(68, sizeof(_Bool), sizeof(_Bool_var2), "test No.68-2 NG\n ");

	_Bool _Bool_var3 __attribute__((aligned(8)));
	ichck(69, 8, __alignof(_Bool_var3), "test No.69-1 NG\n ");
	ichck(69, sizeof(_Bool), sizeof(_Bool_var3), "test No.69-2 NG\n ");

	__attribute__((aligned(16))) _Bool _Bool_var4;
	ichck(70, 16, __alignof(_Bool_var4), "test No.70-1 NG\n ");
	ichck(70, sizeof(_Bool), sizeof(_Bool_var4), "test No.70-2 NG\n ");

#if !__sparc__
	_Bool _Bool_var5 __attribute__((aligned(32)));
	ichck(71, 32, __alignof(_Bool_var5), "test No.71-1 NG\n ");
	ichck(71, sizeof(_Bool), sizeof(_Bool_var5), "test No.71-2 NG\n ");

	__attribute__((aligned(64))) _Bool _Bool_var6;
	ichck(72, 64, __alignof(_Bool_var6), "test No.72-1 NG\n ");
	ichck(72, sizeof(_Bool), sizeof(_Bool_var6), "test No.72-2 NG\n ");

	_Bool _Bool_var7 __attribute__((aligned(128)));
	ichck(73, 128, __alignof(_Bool_var7), "test No.73-1 NG\n ");
	ichck(73, sizeof(_Bool), sizeof(_Bool_var7), "test No.73-2 NG\n ");

	__attribute__((aligned(256))) _Bool _Bool_var8;
	ichck(74, 256, __alignof(_Bool_var8), "test No.74-1 NG\n ");
	ichck(74, sizeof(_Bool), sizeof(_Bool_var8), "test No.74-2 NG\n ");

	_Bool _Bool_var9 __attribute__((aligned(512)));
	ichck(75, 512, __alignof(_Bool_var9), "test No.75-1 NG\n ");
	ichck(75, sizeof(_Bool), sizeof(_Bool_var9), "test No.75-2 NG\n ");

	__attribute__((aligned(1024))) _Bool _Bool_var10;
	ichck(76, 1024, __alignof(_Bool_var10), "test No.76-1 NG\n ");
	ichck(76, sizeof(_Bool), sizeof(_Bool_var10), "test No.76-2 NG\n ");

	_Bool _Bool_var11 __attribute__((aligned(16384)));
	ichck(77, 16384, __alignof(_Bool_var11), "test No.77-1 NG\n ");
	ichck(77, sizeof(_Bool), sizeof(_Bool_var11), "test No.77-2 NG\n ");
#endif

	__attribute__((aligned(1))) float _Complex lli_var0;
	ichck(79, 1, __alignof(lli_var0), "test No.79-1 NG\n ");
	ichck(79, sizeof(float _Complex), sizeof(lli_var0), "test No.79-2 NG\n ");

	float _Complex lli_var1 __attribute__((aligned(2)));
	ichck(80, 2, __alignof(lli_var1), "test No.80-1 NG\n ");
	ichck(80, sizeof(float _Complex), sizeof(lli_var1), "test No.80-2 NG\n ");

	__attribute__((aligned(4))) float _Complex lli_var2;
	ichck(81, 4, __alignof(lli_var2), "test No.81-1 NG\n ");
	ichck(81, sizeof(float _Complex), sizeof(lli_var2), "test No.81-2 NG\n ");

	float _Complex lli_var3 __attribute__((aligned(8)));
	ichck(82, 8, __alignof(lli_var3), "test No.82-1 NG\n ");
	ichck(82, sizeof(float _Complex), sizeof(lli_var3), "test No.82-2 NG\n ");

	__attribute__((aligned(16))) float _Complex lli_var4;
	ichck(83, 16, __alignof(lli_var4), "test No.83-1 NG\n ");
	ichck(83, sizeof(float _Complex), sizeof(lli_var4), "test No.83-2 NG\n ");

#if !__sparc__
	float _Complex lli_var5 __attribute__((aligned(32)));
	ichck(84, 32, __alignof(lli_var5), "test No.84-1 NG\n ");
	ichck(84, sizeof(float _Complex), sizeof(lli_var5), "test No.84-2 NG\n ");

	__attribute__((aligned(64))) float _Complex lli_var6;
	ichck(85, 64, __alignof(lli_var6), "test No.85-1 NG\n ");
	ichck(85, sizeof(float _Complex), sizeof(lli_var6), "test No.85-2 NG\n ");

	float _Complex lli_var7 __attribute__((aligned(128)));
	ichck(86, 128, __alignof(lli_var7), "test No.86-1 NG\n ");
	ichck(86, sizeof(float _Complex), sizeof(lli_var7), "test No.86-2 NG\n ");

	__attribute__((aligned(256))) float _Complex lli_var8;
	ichck(87, 256, __alignof(lli_var8), "test No.87-1 NG\n ");
	ichck(87, sizeof(float _Complex), sizeof(lli_var8), "test No.87-2 NG\n ");

	float _Complex lli_var9 __attribute__((aligned(512)));
	ichck(88, 512, __alignof(lli_var9), "test No.88-1 NG\n ");
	ichck(88, sizeof(float _Complex), sizeof(lli_var9), "test No.88-2 NG\n ");

	__attribute__((aligned(1024))) float _Complex lli_var10;
	ichck(89, 1024, __alignof(lli_var10), "test No.89-1 NG\n ");
	ichck(89, sizeof(float _Complex), sizeof(lli_var10), "test No.89-2 NG\n ");

	float _Complex lli_var11 __attribute__((aligned(16384)));
	ichck(90, 16384, __alignof(lli_var11), "test No.90-1 NG\n ");
	ichck(90, sizeof(float _Complex), sizeof(lli_var11), "test No.90-2 NG\n ");
#endif

	__attribute__((aligned(1))) long long int complex_var0;
	ichck(92, 1, __alignof(complex_var0), "test No.92-1 NG\n ");
	ichck(92, sizeof(long long int), sizeof(complex_var0), "test No.92-2 NG\n ");

	long long int complex_var1 __attribute__((aligned(2)));
	ichck(93, 2, __alignof(complex_var1), "test No.93-1 NG\n ");
	ichck(93, sizeof(long long int), sizeof(complex_var1), "test No.93-2 NG\n ");

	__attribute__((aligned(4))) long long int complex_var2;
	ichck(94, 4, __alignof(complex_var2), "test No.94-1 NG\n ");
	ichck(94, sizeof(long long int), sizeof(complex_var2), "test No.94-2 NG\n ");

	long long int complex_var3 __attribute__((aligned(8)));
	ichck(95, 8, __alignof(complex_var3), "test No.95-1 NG\n ");
	ichck(95, sizeof(long long int), sizeof(complex_var3), "test No.95-2 NG\n ");

	__attribute__((aligned(16))) long long int complex_var4;
	ichck(96, 16, __alignof(complex_var4), "test No.96-1 NG\n ");
	ichck(96, sizeof(long long int), sizeof(complex_var4), "test No.96-2 NG\n ");

#if !__sparc__
	long long int complex_var5 __attribute__((aligned(32)));
	ichck(97, 32, __alignof(complex_var5), "test No.97-1 NG\n ");
	ichck(97, sizeof(long long int), sizeof(complex_var5), "test No.97-2 NG\n ");

	__attribute__((aligned(64))) long long int complex_var6;
	ichck(98, 64, __alignof(complex_var6), "test No.98-1 NG\n ");
	ichck(98, sizeof(long long int), sizeof(complex_var6), "test No.98-2 NG\n ");

	long long int complex_var7 __attribute__((aligned(128)));
	ichck(99, 128, __alignof(complex_var7), "test No.99-1 NG\n ");
	ichck(99, sizeof(long long int), sizeof(complex_var7), "test No.99-2 NG\n ");

	__attribute__((aligned(256))) long long int complex_var8;
	ichck(100, 256, __alignof(complex_var8), "test No.100-1 NG\n ");
	ichck(100, sizeof(long long int), sizeof(complex_var8), "test No.100-2 NG\n ");

	long long int complex_var9 __attribute__((aligned(512)));
	ichck(101, 512, __alignof(complex_var9), "test No.101-1 NG\n ");
	ichck(101, sizeof(long long int), sizeof(complex_var9), "test No.101-2 NG\n ");

	__attribute__((aligned(1024))) long long int complex_var10;
	ichck(102, 1024, __alignof(complex_var10), "test No.102-1 NG\n ");
	ichck(102, sizeof(long long int), sizeof(complex_var10), "test No.102-2 NG\n ");

	long long int complex_var11 __attribute__((aligned(16384)));
	ichck(103, 16384, __alignof(complex_var11), "test No.103-1 NG\n ");
	ichck(103, sizeof(long long int), sizeof(complex_var11), "test No.103-2 NG\n ");
#endif

	header("GNU ","__attribute__ alignof");

}
