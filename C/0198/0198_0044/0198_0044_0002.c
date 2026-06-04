#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
float v1 (unsigned char);
float (*v2) (unsigned char) = v1;
void v3 (signed short, unsigned short, signed int);
void (*v4) (signed short, unsigned short, signed int) = v3;
static union uu0 v5 (unsigned char);
static union uu0 (*v6) (unsigned char) = v5;
extern signed char v7 (unsigned char, unsigned char);
extern signed char (*v8) (unsigned char, unsigned char);
static unsigned int v9 (void);
static unsigned int (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 811582705;
union uu0 v32 = {4007203216U };
signed short v31 = -20558;

static unsigned int v9 (void)
{
{
for (;;) {
signed short v36 = -22232;
union uu0 v35 = {2440861353U };
unsigned char v34 = 52;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v37;
unsigned char v38;
signed char v39;
v37 = 16 + v34;
v38 = v34 - v34;
v39 = (*v8) (v37, v38);
history[history_index++] = (int)v39;
}
break;
case 8: 
return 902132411U;
case 10: 
return 3498721706U;
case 15: 
return 3819648103U;
default: abort ();
}
}
}
}

static union uu0 v5 (unsigned char v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
union uu0 v43 = {4224867883U };
float v42 = -1852612993.55719F;
unsigned int v41 = 1103283848U;
trace++;
switch (trace)
{
case 6: 
{
unsigned char v44;
float v45;
v44 = 29 - v40;
v45 = (*v2) (v44);
history[history_index++] = (int)v45;
}
break;
case 12: 
{
union uu0 v46;
v46.f0 = -98;
return v46;
}
default: abort ();
}
}
}
}

void v3 (signed short v47, unsigned short v48, signed int v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
double v52 = 7236557418366888958.17635;
signed short v51 = -1475;
signed char v50 = -72;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v53;
union uu0 v54;
v53 = 125 + 45;
v54 = (*v6) (v53);
history[history_index++] = (int)v54.f3;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

float v1 (unsigned char v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
union uu1 v58 = {-887877325 };
float v57 = 1814093833.2519F;
struct ss0 v56 = { 617562U, 636974U, 9543, };
trace++;
switch (trace)
{
case 0: 
{
unsigned int v59;
v59 = v9 ();
history[history_index++] = (int)v59;
}
break;
case 3: 
return -1950673047.55015F;
case 7: 
{
unsigned int v60;
v60 = (*v10) ();
history[history_index++] = (int)v60;
}
break;
case 9: 
{
unsigned int v61;
v61 = (*v10) ();
history[history_index++] = (int)v61;
}
break;
case 11: 
return -923066985.20673F;
case 16: 
return -798339669.43030F;
default: abort ();
}
}
}
}
