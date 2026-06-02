#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss0 v1 (void);
extern struct ss0 (*v2) (void);
extern signed int v3 (signed int, unsigned char, unsigned char);
extern signed int (*v4) (signed int, unsigned char, unsigned char);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern unsigned int v9 (signed short, struct ss1);
extern unsigned int (*v10) (signed short, struct ss1);
extern int history[];
extern int history_index;
extern int trace;
signed int v13 = 1394450456;
union uu0 v12 = {3760665547U };
float v11 = -6082046.7243F;

unsigned int v5 (void)
{
{
for (;;) {
float v16 = 907763395.11333F;
unsigned int v15 = 3163679371U;
unsigned char v14 = 45;
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
v19 = (*v2) ();
history[history_index++] = (int)v19.f2;
history[history_index++] = (int)v19.f1;
history[history_index++] = (int)v19.f0;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
