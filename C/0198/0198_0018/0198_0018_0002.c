#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
union uu0 v1 (signed char, unsigned short);
union uu0 (*v2) (signed char, unsigned short) = v1;
static signed short v3 (void);
static signed short (*v4) (void) = v3;
extern void v5 (unsigned short, float, signed int, unsigned int);
extern void (*v6) (unsigned short, float, signed int, unsigned int);
extern struct ss0 v7 (double, struct ss0, signed short);
extern struct ss0 (*v8) (double, struct ss0, signed short);
extern float v9 (void);
extern float (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
double v40 = -405747362952901807.32311;
union uu1 v39 = {-1525403629 };
signed char v38 = -26;

static signed short v3 (void)
{
{
for (;;) {
signed int v43 = -1533814833;
unsigned char v42 = 218;
float v41 = 1896072739.35867F;
trace++;
switch (trace)
{
case 2: 
{
signed short v44;
v44 = (*v4) ();
history[history_index++] = (int)v44;
}
break;
case 3: 
{
signed short v45;
v45 = (*v4) ();
history[history_index++] = (int)v45;
}
break;
case 4: 
{
float v46;
v46 = (*v10) ();
history[history_index++] = (int)v46;
}
break;
case 6: 
{
signed short v47;
v47 = (*v4) ();
history[history_index++] = (int)v47;
}
break;
case 7: 
return 17787;
case 8: 
{
signed short v48;
v48 = (*v4) ();
history[history_index++] = (int)v48;
}
break;
case 9: 
return -7178;
case 10: 
{
float v49;
v49 = (*v10) ();
history[history_index++] = (int)v49;
}
break;
case 12: 
return 22523;
case 13: 
return -11114;
case 14: 
return -20301;
default: abort ();
}
}
}
}

union uu0 v1 (signed char v50, unsigned short v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
union uu1 v54 = {-1706709273 };
unsigned int v53 = 2845838145U;
unsigned short v52 = 36488;
trace++;
switch (trace)
{
case 0: 
{
signed char v55;
unsigned short v56;
union uu0 v57;
v55 = -6 + -8;
v56 = v51 + v51;
v57 = (*v2) (v55, v56);
history[history_index++] = (int)v57.f3;
}
break;
case 1: 
{
signed short v58;
v58 = (*v4) ();
history[history_index++] = (int)v58;
}
break;
case 15: 
{
union uu0 v59;
v59.f3 = -112;
return v59;
}
case 16: 
{
union uu0 v60;
v60.f0 = v50;
return v60;
}
default: abort ();
}
}
}
}
