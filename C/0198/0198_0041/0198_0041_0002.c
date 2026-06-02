#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern union uu1 v3 (unsigned short, float);
extern union uu1 (*v4) (unsigned short, float);
union uu1 v5 (float, signed short, signed short);
union uu1 (*v6) (float, signed short, signed short) = v5;
extern void v7 (struct ss0);
extern void (*v8) (struct ss0);
extern unsigned short v9 (unsigned char);
extern unsigned short (*v10) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v55 = 3881011788U;
unsigned char v54 = 112;
unsigned char v53 = 27;

union uu1 v5 (float v56, signed short v57, signed short v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed short v61 = -5544;
unsigned short v60 = 53634;
signed short v59 = 906;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
