#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss1 v1 (unsigned int);
extern struct ss1 (*v2) (unsigned int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned int v5 (double, unsigned char);
extern unsigned int (*v6) (double, unsigned char);
static unsigned char v7 (signed short, unsigned char);
static unsigned char (*v8) (signed short, unsigned char) = v7;
void v9 (float);
void (*v10) (float) = v9;
extern int history[];
extern int history_index;
extern int trace;
union uu1 v13 = {-813856052 };
signed char v12 = -105;
unsigned char v11 = 176;

void v9 (float v14)
{
history[history_index++] = (int)v14;
{
for (;;) {
unsigned char v17 = 192;
unsigned int v16 = 861659784U;
unsigned int v15 = 1229038655U;
trace++;
switch (trace)
{
case 1: 
{
signed short v18;
unsigned char v19;
unsigned char v20;
v18 = 6322 + 20173;
v19 = 100 + 77;
v20 = (*v8) (v18, v19);
history[history_index++] = (int)v20;
}
break;
case 19: 
return;
default: abort ();
}
}
}
}

static unsigned char v7 (signed short v21, unsigned char v22)
{
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
{
for (;;) {
float v25 = -1689329523.4746F;
struct ss1 v24 = { 49893, -62030614, 45117913U, 484U, };
unsigned int v23 = 134587575U;
trace++;
switch (trace)
{
case 2: 
{
signed short v26;
unsigned char v27;
unsigned char v28;
v26 = -10380 + v21;
v27 = v22 + 8;
v28 = (*v8) (v26, v27);
history[history_index++] = (int)v28;
}
break;
case 3: 
{
signed short v29;
unsigned char v30;
unsigned char v31;
v29 = v21 + v21;
v30 = 67 + 33;
v31 = (*v8) (v29, v30);
history[history_index++] = (int)v31;
}
break;
case 4: 
{
signed short v32;
unsigned char v33;
unsigned char v34;
v32 = v21 + -16340;
v33 = 235 - 107;
v34 = (*v8) (v32, v33);
history[history_index++] = (int)v34;
}
break;
case 5: 
{
signed short v35;
unsigned char v36;
unsigned char v37;
v35 = v21 + v21;
v36 = v22 + 169;
v37 = v7 (v35, v36);
history[history_index++] = (int)v37;
}
break;
case 6: 
{
signed short v38;
unsigned char v39;
unsigned char v40;
v38 = -23212 - v21;
v39 = 202 - 91;
v40 = (*v8) (v38, v39);
history[history_index++] = (int)v40;
}
break;
case 7: 
{
signed short v41;
unsigned char v42;
unsigned char v43;
v41 = v21 - v21;
v42 = 124 + v22;
v43 = (*v8) (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 8: 
return v22;
case 9: 
{
signed short v44;
unsigned char v45;
unsigned char v46;
v44 = -13186 + v21;
v45 = 208 - 12;
v46 = v7 (v44, v45);
history[history_index++] = (int)v46;
}
break;
case 10: 
{
signed short v47;
unsigned char v48;
unsigned char v49;
v47 = v21 + v21;
v48 = 79 - v22;
v49 = v7 (v47, v48);
history[history_index++] = (int)v49;
}
break;
case 11: 
return 17;
case 12: 
return v22;
case 13: 
return v22;
case 14: 
return 46;
case 15: 
return 196;
case 16: 
return v22;
case 17: 
return v22;
case 18: 
return 189;
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
unsigned int v52;
struct ss1 v53;
v52 = 2749769230U + 4204869736U;
v53 = (*v2) (v52);
history[history_index++] = (int)v53.f3;
history[history_index++] = (int)v53.f2;
history[history_index++] = (int)v53.f1;
history[history_index++] = (int)v53.f0;
}
} while (trace < 20);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
