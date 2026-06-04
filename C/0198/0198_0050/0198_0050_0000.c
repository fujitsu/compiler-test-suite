#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern union uu0 v1 (struct ss0, double);
extern union uu0 (*v2) (struct ss0, double);
signed char v5 (unsigned int, struct ss1);
signed char (*v6) (unsigned int, struct ss1) = v5;
static unsigned int v7 (signed char, unsigned int);
static unsigned int (*v8) (signed char, unsigned int) = v7;
extern unsigned int v9 (unsigned char, double, union uu1, struct ss1);
extern unsigned int (*v10) (unsigned char, double, union uu1, struct ss1);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v13 = 2760371632U;
float v12 = -1348787737.54344F;
unsigned int v11 = 1475549805U;

static unsigned int v7 (signed char v14, unsigned int v15)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
{
for (;;) {
unsigned int v18 = 4089393853U;
unsigned int v17 = 1456700386U;
signed int v16 = 986598717;
trace++;
switch (trace)
{
case 4: 
return v18;
case 6: 
{
signed char v19;
unsigned int v20;
unsigned int v21;
v19 = 54 - v14;
v20 = v15 + 3292442072U;
v21 = v7 (v19, v20);
history[history_index++] = (int)v21;
}
break;
case 7: 
{
signed char v22;
unsigned int v23;
unsigned int v24;
v22 = v14 - -108;
v23 = v18 - v17;
v24 = (*v8) (v22, v23);
history[history_index++] = (int)v24;
}
break;
case 8: 
{
signed char v25;
unsigned int v26;
unsigned int v27;
v25 = -102 - -71;
v26 = v18 + v17;
v27 = v7 (v25, v26);
history[history_index++] = (int)v27;
}
break;
case 9: 
{
signed char v28;
unsigned int v29;
unsigned int v30;
v28 = -45 + -6;
v29 = 174589138U - v18;
v30 = v7 (v28, v29);
history[history_index++] = (int)v30;
}
break;
case 10: 
{
signed char v31;
unsigned int v32;
unsigned int v33;
v31 = -100 - v14;
v32 = v15 + 154514930U;
v33 = v7 (v31, v32);
history[history_index++] = (int)v33;
}
break;
case 11: 
return 4158715737U;
case 12: 
return 4154762638U;
case 13: 
return v15;
case 14: 
return v15;
case 15: 
return v15;
case 16: 
return 2295914013U;
default: abort ();
}
}
}
}

signed char v5 (unsigned int v34, struct ss1 v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35.f3;
history[history_index++] = (int)v35.f2;
history[history_index++] = (int)v35.f1;
history[history_index++] = (int)v35.f0;
{
for (;;) {
union uu1 v38 = {-707740042 };
struct ss0 v37 = { 111584U, 698821U, 60488, };
float v36 = -949852843.33391F;
trace++;
switch (trace)
{
case 3: 
{
signed char v39;
unsigned int v40;
unsigned int v41;
v39 = -119 + 32;
v40 = v34 + 2929117259U;
v41 = (*v8) (v39, v40);
history[history_index++] = (int)v41;
}
break;
case 5: 
{
signed char v42;
unsigned int v43;
unsigned int v44;
v42 = 125 + -111;
v43 = 2846285636U + 1934863520U;
v44 = (*v8) (v42, v43);
history[history_index++] = (int)v44;
}
break;
case 17: 
return -5;
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
struct ss0 v47;
double v48;
union uu0 v49;
v47.f2 = 852771U;
v47.f1 = 701296U;
v47.f0 = 5283;
#if defined(__aarch64__)
v48 = -2147483648;
#else
v48 = -3965983753970977276.10674;
#endif
v49 = v1 (v47, v48);
history[history_index++] = (int)v49.f3;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
