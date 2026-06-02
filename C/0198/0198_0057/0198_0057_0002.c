#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
union uu1 v1 (struct ss0, signed short, unsigned short, unsigned char);
union uu1 (*v2) (struct ss0, signed short, unsigned short, unsigned char) = v1;
static unsigned char v3 (void);
static unsigned char (*v4) (void) = v3;
extern struct ss1 v5 (signed short, unsigned char, unsigned char, unsigned int);
extern struct ss1 (*v6) (signed short, unsigned char, unsigned char, unsigned int);
static unsigned int v7 (unsigned int);
static unsigned int (*v8) (unsigned int) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v36 = -1170546947;
unsigned char v35 = 217;
unsigned short v34 = 15298;

static unsigned int v7 (unsigned int v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
struct ss1 v40 = { 59396, -52603354, 17787191U, 408U, };
unsigned short v39 = 48123;
unsigned short v38 = 47696;
trace++;
switch (trace)
{
case 3: 
{
signed short v41;
v41 = (*v10) ();
history[history_index++] = (int)v41;
}
break;
case 5: 
{
signed short v42;
v42 = (*v10) ();
history[history_index++] = (int)v42;
}
break;
case 7: 
return 4143978362U;
case 9: 
return v37;
default: abort ();
}
}
}
}

static unsigned char v3 (void)
{
{
for (;;) {
unsigned short v45 = 63155;
double v44 = -5815001249159795685.39312;
unsigned char v43 = 171;
trace++;
switch (trace)
{
case 1: 
{
struct ss0 v46;
signed short v47;
unsigned short v48;
unsigned char v49;
union uu1 v50;
v46.f2 = 784275U;
v46.f1 = 381298U;
v46.f0 = 6309;
v47 = 24172 + -27470;
v48 = v45 - 5025;
v49 = 238 + 50;
v50 = (*v2) (v46, v47, v48, v49);
history[history_index++] = (int)v50.f2;
}
break;
case 11: 
return 90;
case 13: 
return 166;
default: abort ();
}
}
}
}

union uu1 v1 (struct ss0 v51, signed short v52, unsigned short v53, unsigned char v54)
{
history[history_index++] = (int)v51.f2;
history[history_index++] = (int)v51.f1;
history[history_index++] = (int)v51.f0;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned int v57 = 1444626990U;
float v56 = -359703972.3953F;
unsigned short v55 = 50496;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v58;
v58 = (*v4) ();
history[history_index++] = (int)v58;
}
break;
case 2: 
{
unsigned int v59;
unsigned int v60;
v59 = v57 - v57;
v60 = (*v8) (v59);
history[history_index++] = (int)v60;
}
break;
case 8: 
{
unsigned int v61;
unsigned int v62;
v61 = 2764033389U - 4074881949U;
v62 = (*v8) (v61);
history[history_index++] = (int)v62;
}
break;
case 10: 
{
unsigned char v63;
v63 = (*v4) ();
history[history_index++] = (int)v63;
}
break;
case 12: 
{
union uu1 v64;
v64.f2 = v54;
return v64;
}
case 14: 
{
union uu1 v65;
v65.f2 = v54;
return v65;
}
default: abort ();
}
}
}
}
