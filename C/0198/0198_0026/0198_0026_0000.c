#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned char v3 (unsigned int, double);
extern unsigned char (*v4) (unsigned int, double);
extern union uu1 v5 (unsigned char, struct ss0, unsigned short);
extern union uu1 (*v6) (unsigned char, struct ss0, unsigned short);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
double v13 = 1995305595286934775.31329;
unsigned char v12 = 249;
unsigned short v11 = 60741;

unsigned char v9 (void)
{
{
for (;;) {
unsigned char v16 = 241;
signed char v15 = -104;
unsigned char v14 = 131;
trace++;
switch (trace)
{
case 6: 
return 65;
case 10: 
return 113;
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
v19 = (*v2) ();
history[history_index++] = (int)v19;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
