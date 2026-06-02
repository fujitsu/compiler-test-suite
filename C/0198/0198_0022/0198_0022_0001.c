#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed short v1 (void);
signed short (*v2) (void) = v1;
signed char v3 (signed char, float, struct ss0);
signed char (*v4) (signed char, float, struct ss0) = v3;
static float v5 (void);
static float (*v6) (void) = v5;
signed char v7 (unsigned short, struct ss1, struct ss1, signed int);
signed char (*v8) (unsigned short, struct ss1, struct ss1, signed int) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v19 = { 784095U, 434648U, 30481, };
signed int v18 = 1275443380;
unsigned short v17 = 6065;

signed char v7 (unsigned short v20, struct ss1 v21, struct ss1 v22, signed int v23)
{
history[history_index++] = (int)v20;
history[history_index++] = (int)v21.f3;
history[history_index++] = (int)v21.f2;
history[history_index++] = (int)v21.f1;
history[history_index++] = (int)v21.f0;
history[history_index++] = (int)v22.f3;
history[history_index++] = (int)v22.f2;
history[history_index++] = (int)v22.f1;
history[history_index++] = (int)v22.f0;
history[history_index++] = (int)v23;
{
for (;;) {
unsigned short v26 = 19010;
signed int v25 = -747030460;
unsigned int v24 = 3554174594U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static float v5 (void)
{
{
for (;;) {
float v29 = 800249313.30630F;
unsigned char v28 = 3;
double v27 = 6507259903410918509.55248;
trace++;
switch (trace)
{
case 1: 
return -1658202893.34831F;
case 5: 
return v29;
case 7: 
return -1997999736.57048F;
case 9: 
return -389742713.10221F;
case 11: 
return -1648925525.51185F;
default: abort ();
}
}
}
}

signed char v3 (signed char v30, float v31, struct ss0 v32)
{
history[history_index++] = (int)v30;
history[history_index++] = (int)v31;
history[history_index++] = (int)v32.f2;
history[history_index++] = (int)v32.f1;
history[history_index++] = (int)v32.f0;
{
for (;;) {
signed short v35 = -30642;
struct ss1 v34 = { 47932, 10894823, 12456410U, 187U, };
signed int v33 = 474682515;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
struct ss1 v38 = { 48262, 8732541, 29674095U, 192U, };
unsigned short v37 = 19437;
unsigned short v36 = 3701;
trace++;
switch (trace)
{
case 0: 
{
float v39;
v39 = (*v6) ();
history[history_index++] = (int)v39;
}
break;
case 2: 
return -31883;
case 3: 
return -20615;
case 4: 
{
float v40;
v40 = (*v6) ();
history[history_index++] = (int)v40;
}
break;
case 6: 
{
float v41;
v41 = v5 ();
history[history_index++] = (int)v41;
}
break;
case 8: 
{
float v42;
v42 = v5 ();
history[history_index++] = (int)v42;
}
break;
case 10: 
{
float v43;
v43 = (*v6) ();
history[history_index++] = (int)v43;
}
break;
case 12: 
return -9651;
default: abort ();
}
}
}
}
