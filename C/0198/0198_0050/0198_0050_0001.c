#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern union uu0 v1 (struct ss0, double);
extern union uu0 (*v2) (struct ss0, double);
extern signed char v5 (unsigned int, struct ss1);
extern signed char (*v6) (unsigned int, struct ss1);
unsigned int v9 (unsigned char, double, union uu1, struct ss1);
unsigned int (*v10) (unsigned char, double, union uu1, struct ss1) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed short v52 = -4548;
struct ss0 v51 = { 907599U, 797447U, 49068, };
signed short v50 = -11135;

unsigned int v9 (unsigned char v53, double v54, union uu1 v55, struct ss1 v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55.f2;
history[history_index++] = (int)v56.f3;
history[history_index++] = (int)v56.f2;
history[history_index++] = (int)v56.f1;
history[history_index++] = (int)v56.f0;
{
for (;;) {
unsigned short v59 = 41339;
signed short v58 = 28654;
unsigned char v57 = 54;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
