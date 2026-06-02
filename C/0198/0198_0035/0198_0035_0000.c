#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static signed short v1 (union uu1);
static signed short (*v2) (union uu1) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed short v5 (union uu1);
extern signed short (*v6) (union uu1);
static float v7 (unsigned int, unsigned short, signed char, struct ss1);
static float (*v8) (unsigned int, unsigned short, signed char, struct ss1) = v7;
extern float v9 (signed short, signed short, unsigned short);
extern float (*v10) (signed short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v13 = 21930;
float v12 = 1537035184.44324F;
signed short v11 = -3323;

static float v7 (unsigned int v14, unsigned short v15, signed char v16, struct ss1 v17)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17.f3;
history[history_index++] = (int)v17.f2;
history[history_index++] = (int)v17.f1;
history[history_index++] = (int)v17.f0;
{
for (;;) {
unsigned char v20 = 154;
union uu1 v19 = {377779771 };
signed int v18 = 778669697;
trace++;
switch (trace)
{
case 1: 
return -344436458.16794F;
case 3: 
return 1741859680.4418F;
default: abort ();
}
}
}
}

static signed short v1 (union uu1 v21)
{
history[history_index++] = (int)v21.f2;
{
for (;;) {
union uu1 v24 = {-1481812349 };
signed char v23 = -41;
unsigned int v22 = 765073851U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v25;
unsigned short v26;
signed char v27;
struct ss1 v28;
float v29;
v25 = v22 + v22;
v26 = 63343 - 41744;
v27 = 69 - -64;
v28.f3 = 45340;
v28.f2 = 4048846;
v28.f1 = 54362367U;
v28.f0 = 74U;
v29 = v7 (v25, v26, v27, v28);
history[history_index++] = (int)v29;
}
break;
case 2: 
{
unsigned int v30;
unsigned short v31;
signed char v32;
struct ss1 v33;
float v34;
v30 = 3479492239U - v22;
v31 = 56381 + 12305;
v32 = v23 - 117;
v33.f3 = 8361;
v33.f2 = -21742689;
v33.f1 = 6557984U;
v33.f0 = 142U;
v34 = v7 (v30, v31, v32, v33);
history[history_index++] = (int)v34;
}
break;
case 4: 
{
unsigned short v35;
v35 = (*v4) ();
history[history_index++] = (int)v35;
}
break;
case 12: 
return -20424;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
union uu1 v38;
signed short v39;
v38.f2 = 65;
v39 = (*v2) (v38);
history[history_index++] = (int)v39;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
