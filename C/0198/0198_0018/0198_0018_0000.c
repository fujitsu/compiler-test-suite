#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern union uu0 v1 (signed char, unsigned short);
extern union uu0 (*v2) (signed char, unsigned short);
extern void v5 (unsigned short, float, signed int, unsigned int);
extern void (*v6) (unsigned short, float, signed int, unsigned int);
extern struct ss0 v7 (double, struct ss0, signed short);
extern struct ss0 (*v8) (double, struct ss0, signed short);
float v9 (void);
float (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v13 = { 45160, 11501505, 9711772U, 459U, };
float v12 = 1336294733.37555F;
float v11 = -291940997.44428F;

float v9 (void)
{
{
for (;;) {
signed char v16 = 28;
struct ss0 v15 = { 711494U, 702724U, 31947, };
signed char v14 = 30;
trace++;
switch (trace)
{
case 5: 
return -980828390.22875F;
case 11: 
return -434387358.22746F;
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
signed char v19;
unsigned short v20;
union uu0 v21;
v19 = -96 - -84;
v20 = 9938 - 29073;
v21 = v1 (v19, v20);
history[history_index++] = (int)v21.f3;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
