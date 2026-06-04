#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned int v1 (unsigned char, signed int, signed char);
extern unsigned int (*v2) (unsigned char, signed int, signed char);
signed int v3 (signed char, double, signed char);
signed int (*v4) (signed char, double, signed char) = v3;
extern signed short v5 (signed short, union uu0);
extern signed short (*v6) (signed short, union uu0);
extern signed int v7 (unsigned int);
extern signed int (*v8) (unsigned int);
signed int v9 (signed char, unsigned short, struct ss0);
signed int (*v10) (signed char, unsigned short, struct ss0) = v9;
extern int history[];
extern int history_index;
extern int trace;
union uu1 v58 = {1615508669 };
double v57 = 4474534332549099209.63529;
signed char v56 = 125;

signed int v9 (signed char v59, unsigned short v60, struct ss0 v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61.f2;
history[history_index++] = (int)v61.f1;
history[history_index++] = (int)v61.f0;
{
for (;;) {
unsigned int v64 = 453343064U;
union uu0 v63 = {3965886961U };
unsigned char v62 = 37;
trace++;
switch (trace)
{
case 1: 
return 906424281;
default: abort ();
}
}
}
}

signed int v3 (signed char v65, double v66, signed char v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned char v70 = 26;
struct ss0 v69 = { 624381U, 637318U, 63879, };
signed short v68 = -14492;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
