#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static struct ss0 v3 (void);
static struct ss0 (*v4) (void) = v3;
float v5 (void);
float (*v6) (void) = v5;
extern float v9 (double, signed short, float);
extern float (*v10) (double, signed short, float);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v43 = 2155215878U;
signed short v42 = -22558;
signed short v41 = 11495;

float v5 (void)
{
{
for (;;) {
float v46 = -297790998.44375F;
struct ss1 v45 = { 56585, -40692325, 43919700U, 236U, };
struct ss0 v44 = { 809588U, 389322U, 22549, };
trace++;
switch (trace)
{
case 3: 
{
struct ss0 v47;
v47 = v3 ();
history[history_index++] = (int)v47.f2;
history[history_index++] = (int)v47.f1;
history[history_index++] = (int)v47.f0;
}
break;
case 5: 
return 1011244209.29041F;
default: abort ();
}
}
}
}

static struct ss0 v3 (void)
{
{
for (;;) {
signed char v50 = -71;
union uu0 v49 = {2121489793U };
double v48 = -6853783728471581989.18626;
trace++;
switch (trace)
{
case 4: 
{
struct ss0 v51;
v51.f2 = 753549U;
v51.f1 = 296180U;
v51.f0 = 36801;
return v51;
}
default: abort ();
}
}
}
}
