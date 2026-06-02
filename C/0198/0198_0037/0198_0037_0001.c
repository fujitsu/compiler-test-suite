#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed int v1 (unsigned char, unsigned char, signed short);
signed int (*v2) (unsigned char, unsigned char, signed short) = v1;
extern struct ss0 v3 (struct ss0, unsigned char, unsigned char, signed int);
extern struct ss0 (*v4) (struct ss0, unsigned char, unsigned char, signed int);
extern struct ss1 v5 (signed short, signed char, signed short);
extern struct ss1 (*v6) (signed short, signed char, signed short);
extern union uu1 v7 (unsigned char, unsigned int, unsigned short);
extern union uu1 (*v8) (unsigned char, unsigned int, unsigned short);
static unsigned short v9 (void);
static unsigned short (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
double v36 = 3115830977710819091.6523;
unsigned char v35 = 50;
float v34 = -564776238.41335F;

static unsigned short v9 (void)
{
{
for (;;) {
struct ss0 v39 = { 896856U, 1015270U, 63412, };
unsigned int v38 = 501280550U;
union uu0 v37 = {1153668911U };
trace++;
switch (trace)
{
case 1: 
{
signed short v40;
signed char v41;
signed short v42;
struct ss1 v43;
v40 = -32145 - -23198;
v41 = 31 - -16;
v42 = -31318 - 1190;
v43 = (*v6) (v40, v41, v42);
history[history_index++] = (int)v43.f3;
history[history_index++] = (int)v43.f2;
history[history_index++] = (int)v43.f1;
history[history_index++] = (int)v43.f0;
}
break;
case 3: 
{
signed short v44;
signed char v45;
signed short v46;
struct ss1 v47;
v44 = 3311 - 20466;
v45 = -120 + 51;
v46 = -23879 + -5877;
v47 = v5 (v44, v45, v46);
history[history_index++] = (int)v47.f3;
history[history_index++] = (int)v47.f2;
history[history_index++] = (int)v47.f1;
history[history_index++] = (int)v47.f0;
}
break;
case 5: 
{
struct ss0 v48;
unsigned char v49;
unsigned char v50;
signed int v51;
struct ss0 v52;
v48.f2 = 598885U;
v48.f1 = 929283U;
v48.f0 = 50633;
v49 = 186 - 196;
v50 = 41 + 251;
v51 = -1238090181 - -1508015274;
v52 = (*v4) (v48, v49, v50, v51);
history[history_index++] = (int)v52.f2;
history[history_index++] = (int)v52.f1;
history[history_index++] = (int)v52.f0;
}
break;
case 7: 
{
unsigned short v53;
v53 = (*v10) ();
history[history_index++] = (int)v53;
}
break;
case 8: 
{
unsigned short v54;
v54 = (*v10) ();
history[history_index++] = (int)v54;
}
break;
case 9: 
{
signed short v55;
signed char v56;
signed short v57;
struct ss1 v58;
v55 = 6411 - -1443;
v56 = 94 - 49;
v57 = 19336 + 9699;
v58 = v5 (v55, v56, v57);
history[history_index++] = (int)v58.f3;
history[history_index++] = (int)v58.f2;
history[history_index++] = (int)v58.f1;
history[history_index++] = (int)v58.f0;
}
break;
case 13: 
return 35209;
case 14: 
return 31755;
case 15: 
return 36089;
default: abort ();
}
}
}
}

signed int v1 (unsigned char v59, unsigned char v60, signed short v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned short v64 = 50084;
struct ss0 v63 = { 259350U, 537719U, 28560, };
signed int v62 = -845871936;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v65;
v65 = v9 ();
history[history_index++] = (int)v65;
}
break;
case 16: 
return v62;
default: abort ();
}
}
}
}
