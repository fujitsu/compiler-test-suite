#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
static signed char v1 (unsigned short, float, float, unsigned int);
static signed char (*v2) (unsigned short, float, float, unsigned int) = v1;
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern signed short v5 (float, unsigned char, unsigned int, unsigned short);
extern signed short (*v6) (float, unsigned char, unsigned int, unsigned short);
extern signed short v7 (unsigned short, signed char, unsigned short, struct ss0);
extern signed short (*v8) (unsigned short, signed char, unsigned short, struct ss0);
extern struct ss0 v9 (unsigned char, signed short, unsigned char, unsigned short);
extern struct ss0 (*v10) (unsigned char, signed short, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v13 = { 12606, -20468298, 66866005U, 224U, };
union uu1 v12 = {1442190373 };
signed int v11 = 1142377704;

unsigned char v3 (void)
{
{
for (;;) {
signed char v16 = 36;
signed int v15 = 634412065;
union uu0 v14 = {272990371U };
trace++;
switch (trace)
{
case 7: 
{
unsigned char v17;
v17 = v3 ();
history[history_index++] = (int)v17;
}
break;
case 8: 
{
unsigned char v18;
v18 = v3 ();
history[history_index++] = (int)v18;
}
break;
case 9: 
return 247;
case 10: 
{
unsigned char v19;
v19 = (*v4) ();
history[history_index++] = (int)v19;
}
break;
case 11: 
return 61;
case 12: 
return 0;
case 13: 
return 106;
default: abort ();
}
}
}
}

static signed char v1 (unsigned short v20, float v21, float v22, unsigned int v23)
{
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
{
for (;;) {
float v26 = 361499576.45821F;
unsigned int v25 = 1386095606U;
union uu0 v24 = {1715756759U };
trace++;
switch (trace)
{
case 0: 
{
float v27;
unsigned char v28;
unsigned int v29;
unsigned short v30;
signed short v31;
v27 = -1492581625.28446F;
v28 = 115 - 36;
v29 = v25 + v25;
v30 = 13633 + v20;
v31 = (*v6) (v27, v28, v29, v30);
history[history_index++] = (int)v31;
}
break;
case 2: 
return -27;
case 3: 
{
unsigned short v32;
signed char v33;
unsigned short v34;
struct ss0 v35;
signed short v36;
v32 = v20 - 60872;
v33 = 48 - -108;
v34 = 33341 - 24998;
v35.f2 = 82047U;
v35.f1 = 936171U;
v35.f0 = v20;
v36 = (*v8) (v32, v33, v34, v35);
history[history_index++] = (int)v36;
}
break;
case 17: 
return 27;
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
unsigned short v39;
float v40;
float v41;
unsigned int v42;
signed char v43;
v39 = 62829 + 35090;
v40 = -848570894.54111F;
v41 = -1244200350.29594F;
v42 = 916324506U - 3917340316U;
v43 = (*v2) (v39, v40, v41, v42);
history[history_index++] = (int)v43;
}
} while (trace < 17);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
