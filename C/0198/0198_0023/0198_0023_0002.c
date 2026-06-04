#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
void v3 (signed short, signed short, union uu0);
void (*v4) (signed short, signed short, union uu0) = v3;
extern unsigned char v5 (struct ss0);
extern unsigned char (*v6) (struct ss0);
struct ss0 v9 (void);
struct ss0 (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
double v44 = -7092161987378829254.56595;
struct ss0 v43 = { 668717U, 383239U, 27320, };
unsigned int v42 = 2269915273U;

struct ss0 v9 (void)
{
{
for (;;) {
signed int v47 = 247634542;
signed char v46 = 13;
signed short v45 = -28561;
trace++;
switch (trace)
{
case 3: 
{
struct ss0 v48;
v48.f2 = 788497U;
v48.f1 = 491125U;
v48.f0 = 4844;
return v48;
}
case 5: 
{
struct ss0 v49;
v49.f2 = 233310U;
v49.f1 = 231395U;
v49.f0 = 59176;
return v49;
}
case 7: 
{
struct ss0 v50;
v50.f2 = 468173U;
v50.f1 = 523085U;
v50.f0 = 41989;
return v50;
}
default: abort ();
}
}
}
}

void v3 (signed short v51, signed short v52, union uu0 v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53.f3;
{
for (;;) {
union uu1 v56 = {1100079010 };
signed char v55 = -14;
float v54 = -493115107.22399F;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
