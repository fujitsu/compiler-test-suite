#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern void v1 (double);
extern void (*v2) (double);
extern float v3 (struct ss1, struct ss1, signed int, signed int);
extern float (*v4) (struct ss1, struct ss1, signed int, signed int);
signed int v5 (unsigned int);
signed int (*v6) (unsigned int) = v5;
extern struct ss0 v7 (unsigned char, unsigned short, unsigned char, float);
extern struct ss0 (*v8) (unsigned char, unsigned short, unsigned char, float);
extern signed int v9 (unsigned short, float, unsigned int);
extern signed int (*v10) (unsigned short, float, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
union uu1 v65 = {-1705650449 };
unsigned int v64 = 1218298505U;
struct ss1 v63 = { 60364, 55257780, 31113860U, 242U, };

signed int v5 (unsigned int v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
float v69 = -403565369.60416F;
unsigned char v68 = 254;
float v67 = -1296039447.46166F;
trace++;
switch (trace)
{
case 2: 
return -1558292189;
case 6: 
return 1446147158;
default: abort ();
}
}
}
}
