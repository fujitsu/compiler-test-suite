#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss1 v1 (float, struct ss0);
extern struct ss1 (*v2) (float, struct ss0);
extern union uu0 v3 (float, unsigned short);
extern union uu0 (*v4) (float, unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern double v7 (signed char, struct ss0);
extern double (*v8) (signed char, struct ss0);
float v9 (signed char);
float (*v10) (signed char) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed char v64 = 13;
unsigned int v63 = 463607350U;
unsigned short v62 = 16646;

float v9 (signed char v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = -103;
unsigned char v67 = 252;
unsigned char v66 = 93;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
