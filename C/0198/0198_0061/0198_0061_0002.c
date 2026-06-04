#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed short v1 (void);
extern signed short (*v2) (void);
extern union uu1 v5 (void);
extern union uu1 (*v6) (void);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern unsigned short v9 (signed char, struct ss1, struct ss1);
extern unsigned short (*v10) (signed char, struct ss1, struct ss1);
extern int history[];
extern int history_index;
extern int trace;
union uu0 v44 = {3131476118U };
unsigned int v43 = 2530170317U;
unsigned int v42 = 2644213930U;

signed short v7 (void)
{
{
for (;;) {
struct ss1 v47 = { 48466, 61075481, 5162391U, 33U, };
float v46 = 1837969599.405F;
float v45 = -397996680.52103F;
trace++;
switch (trace)
{
case 6: 
{
signed char v48;
struct ss1 v49;
struct ss1 v50;
unsigned short v51;
v48 = -95 - -76;
v49.f3 = 20122;
v49.f2 = 14510091;
v49.f1 = 16911590U;
v49.f0 = 505U;
v50.f3 = 28092;
v50.f2 = 61050069;
v50.f1 = 61783335U;
v50.f0 = 292U;
v51 = v9 (v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 8: 
{
signed short v52;
v52 = v7 ();
history[history_index++] = (int)v52;
}
break;
case 9: 
return -11422;
case 10: 
{
signed short v53;
v53 = (*v8) ();
history[history_index++] = (int)v53;
}
break;
case 11: 
return 2437;
case 12: 
return -24968;
case 14: 
return -22694;
default: abort ();
}
}
}
}
