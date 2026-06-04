#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (unsigned char);
extern signed int (*v4) (unsigned char);
unsigned char v5 (double, signed int, signed int, double);
unsigned char (*v6) (double, signed int, signed int, double) = v5;
extern struct ss0 v7 (union uu1);
extern struct ss0 (*v8) (union uu1);
extern double v9 (void);
extern double (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v36 = 184;
signed char v35 = 59;
struct ss1 v34 = { 26010, -57594777, 36775905U, 131U, };

unsigned char v5 (double v37, signed int v38, signed int v39, double v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned short v43 = 37685;
double v42 = 2909203380554876466.49924;
unsigned char v41 = 105;
trace++;
switch (trace)
{
case 11: 
return v41;
default: abort ();
}
}
}
}
