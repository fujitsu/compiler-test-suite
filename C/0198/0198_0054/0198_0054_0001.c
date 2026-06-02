#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss0 v1 (void);
extern struct ss0 (*v2) (void);
extern signed int v3 (signed int, unsigned char, unsigned char);
extern signed int (*v4) (signed int, unsigned char, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
unsigned int v9 (signed short, struct ss1);
unsigned int (*v10) (signed short, struct ss1) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed int v22 = -1458662023;
signed short v21 = -5874;
unsigned char v20 = 99;

unsigned int v9 (signed short v23, struct ss1 v24)
{
history[history_index++] = (int)v23;
history[history_index++] = (int)v24.f3;
history[history_index++] = (int)v24.f2;
history[history_index++] = (int)v24.f1;
history[history_index++] = (int)v24.f0;
{
for (;;) {
float v27 = 698738684.20459F;
union uu1 v26 = {1066594205 };
unsigned int v25 = 1445028152U;
trace++;
switch (trace)
{
case 3: 
return v25;
case 5: 
{
struct ss0 v28;
v28 = (*v2) ();
history[history_index++] = (int)v28.f2;
history[history_index++] = (int)v28.f1;
history[history_index++] = (int)v28.f0;
}
break;
case 7: 
{
struct ss0 v29;
v29 = v1 ();
history[history_index++] = (int)v29.f2;
history[history_index++] = (int)v29.f1;
history[history_index++] = (int)v29.f0;
}
break;
case 9: 
return v25;
case 11: 
return v25;
default: abort ();
}
}
}
}
