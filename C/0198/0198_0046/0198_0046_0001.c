#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern float v1 (void);
extern float (*v2) (void);
extern signed short v3 (void);
extern signed short (*v4) (void);
unsigned char v5 (float, unsigned short, unsigned int);
unsigned char (*v6) (float, unsigned short, unsigned int) = v5;
float v7 (signed int, float, struct ss0, unsigned short);
float (*v8) (signed int, float, struct ss0, unsigned short) = v7;
static void v9 (signed short, signed char);
static void (*v10) (signed short, signed char) = v9;
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v19 = { 920148U, 146914U, 50896, };
union uu1 v18 = {-645683187 };
signed int v17 = 1637600516;

static void v9 (signed short v20, signed char v21)
{
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
{
for (;;) {
struct ss1 v24 = { 64826, 20750578, 53243191U, 440U, };
union uu1 v23 = {38592434 };
struct ss0 v22 = { 268213U, 746027U, 24332, };
trace++;
switch (trace)
{
case 6: 
{
signed short v25;
v25 = (*v4) ();
history[history_index++] = (int)v25;
}
break;
case 8: 
{
signed short v26;
v26 = v3 ();
history[history_index++] = (int)v26;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

float v7 (signed int v27, float v28, struct ss0 v29, unsigned short v30)
{
history[history_index++] = (int)v27;
history[history_index++] = (int)v28;
history[history_index++] = (int)v29.f2;
history[history_index++] = (int)v29.f1;
history[history_index++] = (int)v29.f0;
history[history_index++] = (int)v30;
{
for (;;) {
union uu0 v33 = {3771878680U };
signed int v32 = -2052763296;
signed short v31 = -5161;
trace++;
switch (trace)
{
case 5: 
{
signed short v34;
signed char v35;
v34 = -1615 - -2338;
v35 = 46 + 23;
v9 (v34, v35);
}
break;
case 10: 
return v28;
case 13: 
return v28;
default: abort ();
}
}
}
}

unsigned char v5 (float v36, unsigned short v37, unsigned int v38)
{
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
signed short v41 = -488;
union uu1 v40 = {-591445216 };
float v39 = 898007844.17439F;
trace++;
switch (trace)
{
case 4: 
{
signed int v42;
float v43;
struct ss0 v44;
unsigned short v45;
float v46;
v42 = 1059789055 + 695451997;
v43 = v39;
v44.f2 = 295320U;
v44.f1 = 144648U;
v44.f0 = v37;
v45 = 31125 + 43444;
v46 = v7 (v42, v43, v44, v45);
history[history_index++] = (int)v46;
}
break;
case 14: 
return 224;
default: abort ();
}
}
}
}
