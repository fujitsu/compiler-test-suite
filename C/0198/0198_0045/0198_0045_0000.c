#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static void v1 (signed char, signed int, unsigned char);
static void (*v2) (signed char, signed int, unsigned char) = v1;
extern void v3 (signed int);
extern void (*v4) (signed int);
extern signed char v5 (void);
extern signed char (*v6) (void);
struct ss1 v7 (signed int, unsigned char);
struct ss1 (*v8) (signed int, unsigned char) = v7;
unsigned int v9 (union uu0);
unsigned int (*v10) (union uu0) = v9;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v13 = 17855;
struct ss1 v12 = { 46844, 66805463, 35030316U, 356U, };
union uu0 v11 = {4146548873U };

unsigned int v9 (union uu0 v14)
{
history[history_index++] = (int)v14.f3;
{
for (;;) {
signed short v17 = -24272;
signed char v16 = -26;
signed short v15 = -30544;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

struct ss1 v7 (signed int v18, unsigned char v19)
{
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
{
for (;;) {
unsigned short v22 = 36607;
union uu0 v21 = {457983935U };
union uu1 v20 = {-817428755 };
trace++;
switch (trace)
{
case 9: 
{
signed char v23;
signed int v24;
unsigned char v25;
v23 = -30 + 51;
v24 = -503844547 + v18;
v25 = 26 + v19;
(*v2) (v23, v24, v25);
}
break;
case 11: 
{
struct ss1 v26;
v26.f3 = v22;
v26.f2 = 34226797;
v26.f1 = 35747505U;
v26.f0 = 200U;
return v26;
}
default: abort ();
}
}
}
}

static void v1 (signed char v27, signed int v28, unsigned char v29)
{
history[history_index++] = (int)v27;
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
{
for (;;) {
unsigned char v32 = 25;
union uu1 v31 = {-255755268 };
float v30 = 682177840.16836F;
trace++;
switch (trace)
{
case 0: 
{
signed char v33;
v33 = (*v6) ();
history[history_index++] = (int)v33;
}
break;
case 2: 
{
signed char v34;
v34 = v5 ();
history[history_index++] = (int)v34;
}
break;
case 4: 
{
signed char v35;
v35 = (*v6) ();
history[history_index++] = (int)v35;
}
break;
case 10: 
return;
case 14: 
return;
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
signed char v38;
signed int v39;
unsigned char v40;
v38 = 120 - -107;
v39 = -728943947 - -793625064;
v40 = 170 + 218;
v1 (v38, v39, v40);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
