#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern union uu0 v1 (signed char, unsigned short);
extern union uu0 (*v2) (signed char, unsigned short);
void v5 (unsigned short, float, signed int, unsigned int);
void (*v6) (unsigned short, float, signed int, unsigned int) = v5;
struct ss0 v7 (double, struct ss0, signed short);
struct ss0 (*v8) (double, struct ss0, signed short) = v7;
extern float v9 (void);
extern float (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v24 = 3911054788U;
union uu1 v23 = {-1671041665 };
float v22 = 1552725735.45559F;

struct ss0 v7 (double v25, struct ss0 v26, signed short v27)
{
history[history_index++] = (int)v25;
history[history_index++] = (int)v26.f2;
history[history_index++] = (int)v26.f1;
history[history_index++] = (int)v26.f0;
history[history_index++] = (int)v27;
{
for (;;) {
signed int v30 = 1826512875;
signed short v29 = -19444;
unsigned int v28 = 1974871686U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned short v31, float v32, signed int v33, unsigned int v34)
{
history[history_index++] = (int)v31;
history[history_index++] = (int)v32;
history[history_index++] = (int)v33;
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = -183698501;
double v36 = -6927603160914303443.32188;
signed char v35 = -19;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
