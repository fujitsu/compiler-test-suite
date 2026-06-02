#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed int v1 (struct ss1, unsigned char, signed char, signed int);
signed int (*v2) (struct ss1, unsigned char, signed char, signed int) = v1;
extern struct ss0 v3 (void);
extern struct ss0 (*v4) (void);
extern unsigned int v5 (float, signed char);
extern unsigned int (*v6) (float, signed char);
static float v7 (unsigned char);
static float (*v8) (unsigned char) = v7;
extern int history[];
extern int history_index;
extern int trace;
float v23 = -605422031.28295F;
signed char v22 = -54;
double v21 = 8560238584217242447.10784;

static float v7 (unsigned char v24)
{
history[history_index++] = (int)v24;
{
for (;;) {
unsigned int v27 = 2018888742U;
unsigned int v26 = 1235682559U;
signed int v25 = -939117624;
trace++;
switch (trace)
{
case 6: 
{
struct ss0 v28;
v28 = (*v4) ();
history[history_index++] = (int)v28.f2;
history[history_index++] = (int)v28.f1;
history[history_index++] = (int)v28.f0;
}
break;
case 14: 
return 1339209330.30155F;
default: abort ();
}
}
}
}

signed int v1 (struct ss1 v29, unsigned char v30, signed char v31, signed int v32)
{
history[history_index++] = (int)v29.f3;
history[history_index++] = (int)v29.f2;
history[history_index++] = (int)v29.f1;
history[history_index++] = (int)v29.f0;
history[history_index++] = (int)v30;
history[history_index++] = (int)v31;
history[history_index++] = (int)v32;
{
for (;;) {
float v35 = -1071111802.55241F;
signed short v34 = -2291;
unsigned int v33 = 2426865911U;
trace++;
switch (trace)
{
case 0: 
{
float v36;
signed char v37;
unsigned int v38;
v36 = -523445541.19175F;
v37 = v31 + v31;
v38 = (*v6) (v36, v37);
history[history_index++] = (int)v38;
}
break;
case 5: 
{
unsigned char v39;
float v40;
v39 = 169 + 225;
v40 = v7 (v39);
history[history_index++] = (int)v40;
}
break;
case 15: 
return 5022432;
case 18: 
return v32;
default: abort ();
}
}
}
}
