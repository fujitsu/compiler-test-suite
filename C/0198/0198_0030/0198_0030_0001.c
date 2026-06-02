#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern void v1 (float);
extern void (*v2) (float);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed char v5 (struct ss0, float, signed char);
extern signed char (*v6) (struct ss0, float, signed char);
unsigned int v7 (signed int, signed char, double);
unsigned int (*v8) (signed int, signed char, double) = v7;
extern void v9 (float);
extern void (*v10) (float);
extern int history[];
extern int history_index;
extern int trace;
signed int v32 = 430518020;
union uu1 v31 = {-858943704 };
unsigned short v30 = 56362;

unsigned int v7 (signed int v33, signed char v34, double v35)
{
history[history_index++] = (int)v33;
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 2995930257U;
signed int v37 = -1068585704;
double v36 = 3738947632723802207.19439;
trace++;
switch (trace)
{
case 6: 
return v38;
default: abort ();
}
}
}
}
