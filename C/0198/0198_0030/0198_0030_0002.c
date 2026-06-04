#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
void v1 (float);
void (*v2) (float) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
signed char v5 (struct ss0, float, signed char);
signed char (*v6) (struct ss0, float, signed char) = v5;
extern unsigned int v7 (signed int, signed char, double);
extern unsigned int (*v8) (signed int, signed char, double);
extern void v9 (float);
extern void (*v10) (float);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v41 = 401551014U;
signed char v40 = -48;
unsigned char v39 = 92;

signed char v5 (struct ss0 v42, float v43, signed char v44)
{
history[history_index++] = (int)v42.f2;
history[history_index++] = (int)v42.f1;
history[history_index++] = (int)v42.f0;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
struct ss1 v47 = { 38801, 13414570, 57114274U, 353U, };
float v46 = 158066962.47918F;
unsigned short v45 = 20282;
trace++;
switch (trace)
{
case 2: 
{
signed char v48;
v48 = (*v4) ();
history[history_index++] = (int)v48;
}
break;
case 10: 
{
signed char v49;
v49 = (*v4) ();
history[history_index++] = (int)v49;
}
break;
case 12: 
return v44;
case 18: 
return -112;
default: abort ();
}
}
}
}

void v1 (float v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
struct ss0 v53 = { 3141U, 995269U, 34710, };
signed int v52 = 1945944877;
signed int v51 = 1978311884;
trace++;
switch (trace)
{
case 0: 
return;
case 1: 
{
struct ss0 v54;
float v55;
signed char v56;
signed char v57;
v54.f2 = 1016676U;
v54.f1 = 367614U;
v54.f0 = 16359;
v55 = 470691014.47594F;
v56 = 81 + -36;
v57 = v5 (v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 4: 
{
float v58;
v58 = 2012699554.8983F;
v1 (v58);
}
break;
case 5: 
{
signed int v59;
signed char v60;
double v61;
unsigned int v62;
v59 = v52 - v51;
v60 = -53 - -8;
#if defined(__aarch64__)
 v61 = -2147483648;
#else
v61 = -4879626028635209355.16543;
#endif
v62 = (*v8) (v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 7: 
{
signed char v63;
v63 = (*v4) ();
history[history_index++] = (int)v63;
}
break;
case 15: 
return;
case 16: 
return;
case 19: 
return;
default: abort ();
}
}
}
}
