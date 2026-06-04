#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern float v5 (void);
extern float (*v6) (void);
float v9 (double, signed short, float);
float (*v10) (double, signed short, float) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed int v34 = -764023629;
signed short v33 = 32244;
float v32 = 1696195541.65259F;

float v9 (double v35, signed short v36, float v37)
{
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 3261602817U;
unsigned int v39 = 961722761U;
unsigned char v38 = 71;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
