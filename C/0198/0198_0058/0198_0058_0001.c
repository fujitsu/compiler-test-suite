#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss1 v1 (unsigned int);
extern struct ss1 (*v2) (unsigned int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
unsigned int v5 (double, unsigned char);
unsigned int (*v6) (double, unsigned char) = v5;
extern void v9 (float);
extern void (*v10) (float);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v56 = 227;
unsigned short v55 = 11131;
signed char v54 = 91;

unsigned int v5 (double v57, unsigned char v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed char v61 = -116;
float v60 = 765876140.38302F;
union uu1 v59 = {1969399500 };
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
