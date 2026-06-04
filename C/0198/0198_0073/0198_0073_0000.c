#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (unsigned short, signed int, float, union uu0);
extern signed int (*v4) (unsigned short, signed int, float, union uu0);
float v5 (signed char, unsigned int);
float (*v6) (signed char, unsigned int) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed char v9 (unsigned int, unsigned int, unsigned char, signed short);
extern signed char (*v10) (unsigned int, unsigned int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
union uu0 v13 = {255602444U };
signed int v12 = -1580772541;
unsigned short v11 = 37604;

float v5 (signed char v14, unsigned int v15)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
{
for (;;) {
signed short v18 = 27919;
signed int v17 = 876279835;
union uu1 v16 = {-2141059267 };
trace++;
switch (trace)
{
case 3: 
{
signed short v19;
v19 = v7 ();
history[history_index++] = (int)v19;
}
break;
case 5: 
{
signed short v20;
v20 = (*v8) ();
history[history_index++] = (int)v20;
}
break;
case 17: 
return 1725251812.58977F;
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
signed short v23;
v23 = (*v2) ();
history[history_index++] = (int)v23;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
