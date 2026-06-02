#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed short v1 (union uu0, struct ss0);
extern signed short (*v2) (union uu0, struct ss0);
struct ss0 v5 (void);
struct ss0 (*v6) (void) = v5;
static signed int v7 (float);
static signed int (*v8) (float) = v7;
extern int history[];
extern int history_index;
extern int trace;
signed int v42 = 720834118;
signed char v41 = 4;
struct ss1 v40 = { 11237, -49344322, 5385212U, 98U, };

static signed int v7 (float v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
union uu1 v46 = {-64353113 };
signed int v45 = 528144833;
signed char v44 = 108;
trace++;
switch (trace)
{
case 6: 
{
struct ss0 v47;
v47 = v5 ();
history[history_index++] = (int)v47.f2;
history[history_index++] = (int)v47.f1;
history[history_index++] = (int)v47.f0;
}
break;
case 8: 
{
struct ss0 v48;
v48 = v5 ();
history[history_index++] = (int)v48.f2;
history[history_index++] = (int)v48.f1;
history[history_index++] = (int)v48.f0;
}
break;
case 10: 
return 2033915713;
case 12: 
return v45;
default: abort ();
}
}
}
}

struct ss0 v5 (void)
{
{
for (;;) {
union uu1 v51 = {1888682937 };
signed char v50 = -42;
signed char v49 = 32;
trace++;
switch (trace)
{
case 5: 
{
float v52;
signed int v53;
v52 = 1180475110.14950F;
v53 = v7 (v52);
history[history_index++] = (int)v53;
}
break;
case 7: 
{
struct ss0 v54;
v54.f2 = 57156U;
v54.f1 = 602319U;
v54.f0 = 40765;
return v54;
}
case 9: 
{
float v55;
signed int v56;
v55 = -997095587.32724F;
v56 = (*v8) (v55);
history[history_index++] = (int)v56;
}
break;
case 11: 
{
struct ss0 v57;
v57.f2 = 1022773U;
v57.f1 = 633720U;
v57.f0 = 54386;
return v57;
}
case 13: 
{
struct ss0 v58;
v58.f2 = 426260U;
v58.f1 = 243167U;
v58.f0 = 19259;
return v58;
}
default: abort ();
}
}
}
}
