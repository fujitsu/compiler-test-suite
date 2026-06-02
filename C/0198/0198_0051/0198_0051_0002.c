#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned short v1 (float, unsigned char);
extern unsigned short (*v2) (float, unsigned char);
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern unsigned int v5 (float, signed int);
extern unsigned int (*v6) (float, signed int);
extern struct ss0 v9 (unsigned short, unsigned char, struct ss1, unsigned char);
extern struct ss0 (*v10) (unsigned short, unsigned char, struct ss1, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
union uu1 v91 = {-265966755 };
unsigned int v90 = 998036056U;
signed int v89 = 91721128;

unsigned char v3 (void)
{
{
for (;;) {
struct ss1 v94 = { 28342, -32873168, 56984603U, 481U, };
union uu0 v93 = {3619915106U };
signed char v92 = -117;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
