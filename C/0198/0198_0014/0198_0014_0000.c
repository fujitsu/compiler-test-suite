#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static unsigned short v1 (void);
static unsigned short (*v2) (void) = v1;
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern unsigned int v7 (signed short);
extern unsigned int (*v8) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v13 = 39641;
signed short v12 = -23946;
unsigned short v11 = 36317;

static unsigned short v1 (void)
{
{
for (;;) {
unsigned short v16 = 55841;
union uu1 v15 = {1883383787 };
float v14 = -237135538.41543F;
trace++;
switch (trace)
{
case 0: 
{
signed short v17;
unsigned int v18;
v17 = 2639 - -20836;
v18 = (*v8) (v17);
history[history_index++] = (int)v18;
}
break;
case 2: 
{
unsigned short v19;
v19 = (*v2) ();
history[history_index++] = (int)v19;
}
break;
case 3: 
{
unsigned short v20;
v20 = v1 ();
history[history_index++] = (int)v20;
}
break;
case 4: 
{
signed short v21;
unsigned int v22;
v21 = 16073 + 5985;
v22 = v7 (v21);
history[history_index++] = (int)v22;
}
break;
case 18: 
return v16;
case 19: 
return v16;
case 20: 
return 45529;
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
unsigned short v25;
v25 = (*v2) ();
history[history_index++] = (int)v25;
}
} while (trace < 20);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
