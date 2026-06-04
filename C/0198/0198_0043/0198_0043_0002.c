#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned short v1 (struct ss0, float, struct ss0);
extern unsigned short (*v2) (struct ss0, float, struct ss0);
extern unsigned char v3 (struct ss1, signed short);
extern unsigned char (*v4) (struct ss1, signed short);
extern signed char v5 (void);
extern signed char (*v6) (void);
union uu0 v7 (unsigned short, unsigned char, unsigned char);
union uu0 (*v8) (unsigned short, unsigned char, unsigned char) = v7;
extern unsigned short v9 (signed short, union uu0, unsigned char);
extern unsigned short (*v10) (signed short, union uu0, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v71 = 43255;
signed int v70 = -52282848;
struct ss1 v69 = { 9835, -18043855, 30763977U, 269U, };

union uu0 v7 (unsigned short v72, unsigned char v73, unsigned char v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = -24;
unsigned short v76 = 21924;
unsigned int v75 = 1111750686U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
