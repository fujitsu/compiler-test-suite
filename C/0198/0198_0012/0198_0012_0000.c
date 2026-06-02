#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static struct ss0 v1 (signed char);
static struct ss0 (*v2) (signed char) = v1;
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
extern signed int v5 (struct ss0, unsigned short);
extern signed int (*v6) (struct ss0, unsigned short);
extern void v7 (struct ss0, unsigned int, struct ss0, struct ss1);
extern void (*v8) (struct ss0, unsigned int, struct ss0, struct ss1);
extern float v9 (void);
extern float (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
union uu0 v13 = {1423829201U };
signed char v12 = 58;
signed char v11 = -26;

static struct ss0 v1 (signed char v14)
{
history[history_index++] = (int)v14;
{
for (;;) {
double v17 = -278250770231307241.55522;
union uu0 v16 = {1673646751U };
struct ss0 v15 = { 941329U, 48560U, 57415, };
trace++;
switch (trace)
{
case 0: 
{
signed short v18;
signed short v19;
v18 = -17899 - 1804;
v19 = (*v4) (v18);
history[history_index++] = (int)v19;
}
break;
case 2: 
{
struct ss0 v20;
v20.f2 = 343677U;
v20.f1 = 699431U;
v20.f0 = 18190;
return v20;
}
case 3: 
{
struct ss0 v21;
unsigned short v22;
signed int v23;
v21.f2 = 237301U;
v21.f1 = 166257U;
v21.f0 = 41737;
v22 = 48985 - 14166;
v23 = v5 (v21, v22);
history[history_index++] = (int)v23;
}
break;
case 5: 
{
struct ss0 v24;
unsigned int v25;
struct ss0 v26;
struct ss1 v27;
v24.f2 = 14829U;
v24.f1 = 979724U;
v24.f0 = 7348;
v25 = 2573987093U - 112399258U;
v26.f2 = 996168U;
v26.f1 = 139697U;
v26.f0 = 18084;
v27.f3 = 14544;
v27.f2 = 7072729;
v27.f1 = 47593453U;
v27.f0 = 450U;
(*v8) (v24, v25, v26, v27);
}
break;
case 13: 
{
struct ss0 v28;
v28.f2 = 227273U;
v28.f1 = 136845U;
v28.f0 = 24789;
return v28;
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
signed char v31;
struct ss0 v32;
v31 = 67 + v11;
v32 = v1 (v31);
history[history_index++] = (int)v32.f2;
history[history_index++] = (int)v32.f1;
history[history_index++] = (int)v32.f0;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
