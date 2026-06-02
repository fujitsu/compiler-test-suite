#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
struct ss1 v1 (struct ss1);
struct ss1 (*v2) (struct ss1) = v1;
extern void v3 (struct ss1, unsigned char);
extern void (*v4) (struct ss1, unsigned char);
extern signed short v5 (struct ss1, signed int);
extern signed short (*v6) (struct ss1, signed int);
unsigned int v7 (signed short, signed char);
unsigned int (*v8) (signed short, signed char) = v7;
static unsigned short v9 (void);
static unsigned short (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v40 = 1679124683U;
union uu1 v39 = {-1611772784 };
struct ss0 v38 = { 612181U, 446858U, 48234, };

static unsigned short v9 (void)
{
{
for (;;) {
unsigned char v43 = 183;
signed int v42 = -1279802385;
signed int v41 = 1475672939;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v44;
v44 = (*v10) ();
history[history_index++] = (int)v44;
}
break;
case 2: 
{
struct ss1 v45;
unsigned char v46;
v45.f3 = 18357;
v45.f2 = -59924329;
v45.f1 = 15596175U;
v45.f0 = 255U;
v46 = v43 + 34;
(*v4) (v45, v46);
}
break;
case 4: 
{
struct ss1 v47;
unsigned char v48;
v47.f3 = 149;
v47.f2 = -32636680;
v47.f1 = 38182920U;
v47.f0 = 318U;
v48 = v43 - 73;
v3 (v47, v48);
}
break;
case 6: 
{
struct ss1 v49;
unsigned char v50;
v49.f3 = 21865;
v49.f2 = 22728365;
v49.f1 = 5809340U;
v49.f0 = 414U;
v50 = 114 - v43;
v3 (v49, v50);
}
break;
case 14: 
return 48403;
case 15: 
return 35884;
default: abort ();
}
}
}
}

unsigned int v7 (signed short v51, signed char v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
struct ss0 v55 = { 906666U, 751986U, 64479, };
signed short v54 = 26770;
signed short v53 = -32735;
trace++;
switch (trace)
{
case 10: 
return 972869576U;
default: abort ();
}
}
}
}

struct ss1 v1 (struct ss1 v56)
{
history[history_index++] = (int)v56.f3;
history[history_index++] = (int)v56.f2;
history[history_index++] = (int)v56.f1;
history[history_index++] = (int)v56.f0;
{
for (;;) {
double v59 = 7846163325670002397.18855;
struct ss1 v58 = { 49292, 19975757, 63461269U, 127U, };
union uu1 v57 = {84544566 };
trace++;
switch (trace)
{
case 0: 
{
unsigned short v60;
v60 = (*v10) ();
history[history_index++] = (int)v60;
}
break;
case 16: 
{
struct ss1 v61;
v61.f3 = 18162;
v61.f2 = -47518145;
v61.f1 = 66233142U;
v61.f0 = 413U;
return v61;
}
default: abort ();
}
}
}
}
