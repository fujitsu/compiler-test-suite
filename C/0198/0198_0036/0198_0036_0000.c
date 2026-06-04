#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned short v1 (unsigned char);
extern unsigned short (*v2) (unsigned char);
extern unsigned short v5 (signed short, unsigned int, struct ss0);
extern unsigned short (*v6) (signed short, unsigned int, struct ss0);
extern double v7 (signed char, union uu1, float, struct ss1);
extern double (*v8) (signed char, union uu1, float, struct ss1);
signed int v9 (void);
signed int (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v13 = { 18709, -37240873, 1453573U, 278U, };
signed char v12 = 107;
double v11 = 6127017126731584721.38703;

signed int v9 (void)
{
{
for (;;) {
struct ss0 v16 = { 217428U, 786258U, 54081, };
unsigned int v15 = 1604289424U;
signed short v14 = -6657;
trace++;
switch (trace)
{
case 2: 
return -888490383;
case 4: 
{
signed short v17;
unsigned int v18;
struct ss0 v19;
unsigned short v20;
v17 = v14 - -5240;
v18 = v15 - 2656315463U;
v19.f2 = 871064U;
v19.f1 = 371788U;
v19.f0 = 31939;
v20 = (*v6) (v17, v18, v19);
history[history_index++] = (int)v20;
}
break;
case 6: 
{
signed short v21;
unsigned int v22;
struct ss0 v23;
unsigned short v24;
v21 = v14 + 3483;
v22 = 3372630600U - v15;
v23.f2 = 246442U;
v23.f1 = 89823U;
v23.f0 = 61668;
v24 = (*v6) (v21, v22, v23);
history[history_index++] = (int)v24;
}
break;
case 8: 
{
signed short v25;
unsigned int v26;
struct ss0 v27;
unsigned short v28;
v25 = 17412 + v14;
v26 = v15 - 394579859U;
v27.f2 = 41331U;
v27.f1 = 356271U;
v27.f0 = 18635;
v28 = (*v6) (v25, v26, v27);
history[history_index++] = (int)v28;
}
break;
case 10: 
return 1240532139;
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
unsigned char v31;
unsigned short v32;
v31 = 162 - 225;
v32 = (*v2) (v31);
history[history_index++] = (int)v32;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
