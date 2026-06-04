#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss0 v1 (signed char, union uu1, signed int, signed char);
extern struct ss0 (*v2) (signed char, union uu1, signed int, signed char);
union uu0 v5 (signed int, double, unsigned short);
union uu0 (*v6) (signed int, double, unsigned short) = v5;
extern unsigned char v7 (unsigned short, signed char, signed int, unsigned int);
extern unsigned char (*v8) (unsigned short, signed char, signed int, unsigned int);
extern float v9 (signed char, struct ss0);
extern float (*v10) (signed char, struct ss0);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v47 = 231;
float v46 = 1744699504.11282F;
struct ss1 v45 = { 30594, 66189706, 5400577U, 175U, };

union uu0 v5 (signed int v48, double v49, unsigned short v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned char v53 = 163;
unsigned int v52 = 1557160836U;
signed int v51 = -324261392;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
