#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned char v1 (double);
unsigned char (*v2) (double) = v1;
extern void v3 (float);
extern void (*v4) (float);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed int v7 (signed char, unsigned short, union uu0);
extern signed int (*v8) (signed char, unsigned short, union uu0);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed char v39 = 45;
unsigned int v38 = 1308933889U;
signed short v37 = 25209;

unsigned short v9 (void)
{
{
for (;;) {
float v42 = 1609635456.36622F;
double v41 = -7127693653952570073.24502;
unsigned char v40 = 128;
trace++;
switch (trace)
{
case 3: 
{
signed short v43;
v43 = (*v6) ();
history[history_index++] = (int)v43;
}
break;
case 5: 
{
signed short v44;
v44 = v5 ();
history[history_index++] = (int)v44;
}
break;
case 7: 
{
signed short v45;
v45 = (*v6) ();
history[history_index++] = (int)v45;
}
break;
case 9: 
return 51538;
case 11: 
return 42929;
case 13: 
return 47572;
case 15: 
return 50335;
default: abort ();
}
}
}
}

unsigned char v1 (double v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = -25;
unsigned char v48 = 226;
unsigned int v47 = 448086675U;
trace++;
switch (trace)
{
case 0: 
{
float v50;
v50 = -928540145.5425F;
v3 (v50);
}
break;
case 2: 
{
unsigned short v51;
v51 = (*v10) ();
history[history_index++] = (int)v51;
}
break;
case 16: 
return 173;
default: abort ();
}
}
}
}
