#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss0 v1 (void);
extern struct ss0 (*v2) (void);
extern signed short v5 (signed short, union uu1);
extern signed short (*v6) (signed short, union uu1);
extern signed int v7 (struct ss0);
extern signed int (*v8) (struct ss0);
signed int v9 (void);
signed int (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed short v13 = 13211;
unsigned short v12 = 48160;
float v11 = 1542777870.21778F;

signed int v9 (void)
{
{
for (;;) {
union uu0 v16 = {3310443129U };
signed char v15 = -63;
struct ss1 v14 = { 60910, 66242919, 65612115U, 3U, };
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
struct ss0 v19;
v19 = v1 ();
history[history_index++] = (int)v19.f2;
history[history_index++] = (int)v19.f1;
history[history_index++] = (int)v19.f0;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
