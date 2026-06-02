#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned int v1 (signed short, struct ss0);
unsigned int (*v2) (signed short, struct ss0) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
static unsigned char v5 (struct ss0, signed char, unsigned char);
static unsigned char (*v6) (struct ss0, signed char, unsigned char) = v5;
static unsigned char v7 (signed short);
static unsigned char (*v8) (signed short) = v7;
extern struct ss1 v9 (union uu1, float, float);
extern struct ss1 (*v10) (union uu1, float, float);
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v30 = { 49704, 27362018, 51911225U, 511U, };
unsigned short v29 = 25701;
unsigned int v28 = 144090837U;

static unsigned char v7 (signed short v31)
{
history[history_index++] = (int)v31;
{
for (;;) {
union uu0 v34 = {1178387965U };
unsigned int v33 = 496150912U;
struct ss1 v32 = { 40017, -46622183, 50869068U, 98U, };
trace++;
switch (trace)
{
case 5: 
{
signed short v35;
unsigned char v36;
v35 = -6995 - -17666;
v36 = (*v8) (v35);
history[history_index++] = (int)v36;
}
break;
case 6: 
{
signed short v37;
unsigned char v38;
v37 = -2584 + 9637;
v38 = (*v8) (v37);
history[history_index++] = (int)v38;
}
break;
case 7: 
{
signed short v39;
unsigned char v40;
v39 = v31 - v31;
v40 = (*v8) (v39);
history[history_index++] = (int)v40;
}
break;
case 8: 
return 59;
case 9: 
return 193;
case 10: 
return 121;
case 11: 
return 208;
default: abort ();
}
}
}
}

static unsigned char v5 (struct ss0 v41, signed char v42, unsigned char v43)
{
history[history_index++] = (int)v41.f2;
history[history_index++] = (int)v41.f1;
history[history_index++] = (int)v41.f0;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = 71;
float v45 = 1651107542.49679F;
signed char v44 = -54;
trace++;
switch (trace)
{
case 2: 
return v43;
default: abort ();
}
}
}
}

unsigned int v1 (signed short v47, struct ss0 v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48.f2;
history[history_index++] = (int)v48.f1;
history[history_index++] = (int)v48.f0;
{
for (;;) {
struct ss0 v51 = { 899960U, 447523U, 10696, };
signed int v50 = -508326495;
signed char v49 = 64;
trace++;
switch (trace)
{
case 0: 
return 199980016U;
case 1: 
{
struct ss0 v52;
signed char v53;
unsigned char v54;
unsigned char v55;
v52.f2 = 257976U;
v52.f1 = 633909U;
v52.f0 = 11294;
v53 = -124 + -123;
v54 = 225 + 101;
v55 = (*v6) (v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 3: 
return 1242976003U;
case 4: 
{
signed short v56;
unsigned char v57;
v56 = v47 + v47;
v57 = (*v8) (v56);
history[history_index++] = (int)v57;
}
break;
case 12: 
return 2067098726U;
default: abort ();
}
}
}
}
