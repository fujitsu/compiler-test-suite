#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
struct ss0 v1 (void);
struct ss0 (*v2) (void) = v1;
signed int v3 (signed int, unsigned char, unsigned char);
signed int (*v4) (signed int, unsigned char, unsigned char) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
static unsigned int v7 (float, signed int);
static unsigned int (*v8) (float, signed int) = v7;
extern unsigned int v9 (signed short, struct ss1);
extern unsigned int (*v10) (signed short, struct ss1);
extern int history[];
extern int history_index;
extern int trace;
float v32 = -1018781882.9015F;
double v31 = -5017919248218979230.59940;
double v30 = 4665557951338074597.49581;

static unsigned int v7 (float v33, signed int v34)
{
history[history_index++] = (int)v33;
history[history_index++] = (int)v34;
{
for (;;) {
struct ss0 v37 = { 810153U, 823345U, 8883, };
float v36 = -466534777.15625F;
union uu1 v35 = {1162055536 };
trace++;
switch (trace)
{
case 2: 
{
signed short v38;
struct ss1 v39;
unsigned int v40;
v38 = -10478 - -8663;
v39.f3 = 7023;
v39.f2 = 57204254;
v39.f1 = 64946650U;
v39.f0 = 318U;
v40 = (*v10) (v38, v39);
history[history_index++] = (int)v40;
}
break;
case 4: 
{
signed short v41;
struct ss1 v42;
unsigned int v43;
v41 = -18284 - 10264;
v42.f3 = 16383;
v42.f2 = 61681657;
v42.f1 = 4829076U;
v42.f0 = 455U;
v43 = (*v10) (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 12: 
return 100134233U;
default: abort ();
}
}
}
}

signed int v3 (signed int v44, unsigned char v45, unsigned char v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
double v49 = 5293442931092815779.25531;
signed int v48 = 1251362138;
float v47 = -702519440.2895F;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

struct ss0 v1 (void)
{
{
for (;;) {
union uu1 v52 = {266435451 };
union uu1 v51 = {1851550277 };
unsigned short v50 = 951;
trace++;
switch (trace)
{
case 0: 
{
struct ss0 v53;
v53 = (*v2) ();
history[history_index++] = (int)v53.f2;
history[history_index++] = (int)v53.f1;
history[history_index++] = (int)v53.f0;
}
break;
case 1: 
{
float v54;
signed int v55;
unsigned int v56;
v54 = -643924322.8648F;
v55 = -2010252529 - -2070860525;
v56 = (*v8) (v54, v55);
history[history_index++] = (int)v56;
}
break;
case 6: 
{
signed short v57;
struct ss1 v58;
unsigned int v59;
v57 = -3297 + -9485;
v58.f3 = v50;
v58.f2 = 37876905;
v58.f1 = 24666718U;
v58.f0 = 213U;
v59 = v9 (v57, v58);
history[history_index++] = (int)v59;
}
break;
case 8: 
{
struct ss0 v60;
v60.f2 = 116155U;
v60.f1 = 1020109U;
v60.f0 = v50;
return v60;
}
case 10: 
{
struct ss0 v61;
v61.f2 = 705715U;
v61.f1 = 174350U;
v61.f0 = 8470;
return v61;
}
case 13: 
{
struct ss0 v62;
v62.f2 = 1037864U;
v62.f1 = 602906U;
v62.f0 = 32824;
return v62;
}
case 14: 
{
struct ss0 v63;
v63.f2 = 370381U;
v63.f1 = 316743U;
v63.f0 = v50;
return v63;
}
default: abort ();
}
}
}
}
