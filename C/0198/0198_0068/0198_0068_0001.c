#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
float v1 (void);
float (*v2) (void) = v1;
static struct ss1 v3 (void);
static struct ss1 (*v4) (void) = v3;
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
static signed char v7 (unsigned int);
static signed char (*v8) (unsigned int) = v7;
extern struct ss1 v9 (void);
extern struct ss1 (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
union uu1 v23 = {-1766449929 };
struct ss0 v22 = { 92582U, 197846U, 49894, };
signed char v21 = 115;

static signed char v7 (unsigned int v24)
{
history[history_index++] = (int)v24;
{
for (;;) {
unsigned int v27 = 625216799U;
struct ss0 v26 = { 481690U, 1010157U, 57349, };
union uu0 v25 = {1423001540U };
trace++;
switch (trace)
{
case 6: 
{
float v28;
v28 = v1 ();
history[history_index++] = (int)v28;
}
break;
case 12: 
return 87;
default: abort ();
}
}
}
}

static struct ss1 v3 (void)
{
{
for (;;) {
unsigned int v31 = 3399868326U;
union uu1 v30 = {-1442178351 };
double v29 = -6499768298120951984.37027;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v32;
signed char v33;
v32 = v31 - 1582927205U;
v33 = (*v8) (v32);
history[history_index++] = (int)v33;
}
break;
case 13: 
{
struct ss1 v34;
v34.f3 = 8103;
v34.f2 = 11834357;
v34.f1 = 25685640U;
v34.f0 = 96U;
return v34;
}
default: abort ();
}
}
}
}

float v1 (void)
{
{
for (;;) {
unsigned char v37 = 101;
signed char v36 = -3;
signed int v35 = -1406579205;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v38;
unsigned char v39;
v38 = 4124 + 57172;
v39 = v5 (v38);
history[history_index++] = (int)v39;
}
break;
case 2: 
{
unsigned short v40;
unsigned char v41;
v40 = 45027 - 18593;
v41 = (*v6) (v40);
history[history_index++] = (int)v41;
}
break;
case 4: 
{
struct ss1 v42;
v42 = (*v4) ();
history[history_index++] = (int)v42.f3;
history[history_index++] = (int)v42.f2;
history[history_index++] = (int)v42.f1;
history[history_index++] = (int)v42.f0;
}
break;
case 7: 
{
struct ss1 v43;
v43 = (*v10) ();
history[history_index++] = (int)v43.f3;
history[history_index++] = (int)v43.f2;
history[history_index++] = (int)v43.f1;
history[history_index++] = (int)v43.f0;
}
break;
case 9: 
{
unsigned short v44;
unsigned char v45;
v44 = 23145 - 42834;
v45 = v5 (v44);
history[history_index++] = (int)v45;
}
break;
case 11: 
return -28322729.603F;
case 14: 
return 1694243064.23064F;
default: abort ();
}
}
}
}
