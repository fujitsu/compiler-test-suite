#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern union uu1 v1 (struct ss0, signed short, unsigned short, unsigned char);
extern union uu1 (*v2) (struct ss0, signed short, unsigned short, unsigned char);
struct ss1 v5 (signed short, unsigned char, unsigned char, unsigned int);
struct ss1 (*v6) (signed short, unsigned char, unsigned char, unsigned int) = v5;
signed short v9 (void);
signed short (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed int v23 = 130866308;
signed int v22 = -1795648152;
unsigned int v21 = 2735082264U;

signed short v9 (void)
{
{
for (;;) {
struct ss1 v26 = { 17595, 51385717, 40707964U, 486U, };
union uu1 v25 = {1260858675 };
unsigned int v24 = 2805976116U;
trace++;
switch (trace)
{
case 4: 
return 10290;
case 6: 
return -9207;
default: abort ();
}
}
}
}

struct ss1 v5 (signed short v27, unsigned char v28, unsigned char v29, unsigned int v30)
{
history[history_index++] = (int)v27;
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
{
for (;;) {
signed int v33 = -2117640498;
float v32 = -1016301969.11654F;
unsigned int v31 = 940323960U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
