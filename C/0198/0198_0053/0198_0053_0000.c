#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned int v1 (signed short, struct ss0);
extern unsigned int (*v2) (signed short, struct ss0);
signed char v3 (void);
signed char (*v4) (void) = v3;
struct ss1 v9 (union uu1, float, float);
struct ss1 (*v10) (union uu1, float, float) = v9;
extern int history[];
extern int history_index;
extern int trace;
float v13 = 1827013508.26291F;
signed short v12 = -32163;
signed short v11 = 3178;

struct ss1 v9 (union uu1 v14, float v15, float v16)
{
history[history_index++] = (int)v14.f2;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
{
for (;;) {
unsigned int v19 = 2779612086U;
unsigned int v18 = 1182300483U;
double v17 = -2406748882340601551.55133;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
unsigned short v22 = 56937;
unsigned int v21 = 2734468337U;
union uu1 v20 = {144791025 };
trace++;
switch (trace)
{
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
signed short v25;
struct ss0 v26;
unsigned int v27;
v25 = v11 - v12;
v26.f2 = 644489U;
v26.f1 = 962952U;
v26.f0 = 60505;
v27 = (*v2) (v25, v26);
history[history_index++] = (int)v27;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
