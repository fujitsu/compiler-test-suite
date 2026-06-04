#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern float v1 (void);
extern float (*v2) (void);
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
struct ss1 v9 (void);
struct ss1 (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v13 = 54899;
signed short v12 = 23156;
signed char v11 = -75;

struct ss1 v9 (void)
{
{
for (;;) {
struct ss0 v16 = { 357490U, 609858U, 9807, };
unsigned short v15 = 28322;
float v14 = -1477223388.56870F;
trace++;
switch (trace)
{
case 8: 
{
struct ss1 v17;
v17.f3 = 25172;
v17.f2 = -44935879;
v17.f1 = 57787674U;
v17.f0 = 346U;
return v17;
}
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
float v20;
v20 = (*v2) ();
history[history_index++] = (int)v20;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
