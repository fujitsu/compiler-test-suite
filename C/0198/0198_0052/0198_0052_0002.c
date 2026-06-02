#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern void v3 (unsigned int, struct ss1, signed short, unsigned int);
extern void (*v4) (unsigned int, struct ss1, signed short, unsigned int);
double v5 (unsigned int, union uu1);
double (*v6) (unsigned int, union uu1) = v5;
extern struct ss1 v7 (float, signed int);
extern struct ss1 (*v8) (float, signed int);
extern float v9 (void);
extern float (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v74 = { 972342U, 356864U, 47373, };
signed int v73 = -800996546;
struct ss1 v72 = { 21700, -12416640, 29149356U, 158U, };

double v5 (unsigned int v75, union uu1 v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76.f2;
{
for (;;) {
struct ss0 v79 = { 51758U, 1047926U, 25166, };
unsigned short v78 = 734;
struct ss1 v77 = { 58088, 21175345, 47362976U, 257U, };
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
