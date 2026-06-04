#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
void v1 (double);
void (*v2) (double) = v1;
extern float v3 (struct ss1, struct ss1, signed int, signed int);
extern float (*v4) (struct ss1, struct ss1, signed int, signed int);
extern signed int v5 (unsigned int);
extern signed int (*v6) (unsigned int);
extern struct ss0 v7 (unsigned char, unsigned short, unsigned char, float);
extern struct ss0 (*v8) (unsigned char, unsigned short, unsigned char, float);
signed int v9 (unsigned short, float, unsigned int);
signed int (*v10) (unsigned short, float, unsigned int) = v9;
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v33 = { 303527U, 484042U, 36613, };
union uu1 v32 = {-1666297633 };
struct ss1 v31 = { 60424, -3398794, 59186498U, 425U, };

signed int v9 (unsigned short v34, float v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 3798059957U;
signed short v38 = 26498;
unsigned int v37 = 2296244149U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (double v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = -223820957;
union uu1 v42 = {312695238 };
union uu1 v41 = {172906758 };
trace++;
switch (trace)
{
case 0: 
return;
case 1: 
{
unsigned int v44;
signed int v45;
v44 = 2624002578U - 1145519912U;
v45 = (*v6) (v44);
history[history_index++] = (int)v45;
}
break;
case 3: 
{
struct ss1 v46;
struct ss1 v47;
signed int v48;
signed int v49;
float v50;
v46.f3 = 54959;
v46.f2 = 4903964;
v46.f1 = 32477976U;
v46.f0 = 391U;
v47.f3 = 14943;
v47.f2 = 57603507;
v47.f1 = 2740140U;
v47.f0 = 133U;
v48 = -890289828 + v43;
v49 = v43 + -1631821437;
v50 = v3 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 5: 
{
unsigned int v51;
signed int v52;
v51 = 4065676916U + 2381338486U;
v52 = (*v6) (v51);
history[history_index++] = (int)v52;
}
break;
case 7: 
{
struct ss1 v53;
struct ss1 v54;
signed int v55;
signed int v56;
float v57;
v53.f3 = 13495;
v53.f2 = 18646055;
v53.f1 = 40157205U;
v53.f0 = 21U;
v54.f3 = 39477;
v54.f2 = -59219698;
v54.f1 = 64391196U;
v54.f0 = 377U;
v55 = v43 + -1250084212;
v56 = v43 + v43;
v57 = (*v4) (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 9: 
{
struct ss1 v58;
struct ss1 v59;
signed int v60;
signed int v61;
float v62;
v58.f3 = 44655;
v58.f2 = -12843188;
v58.f1 = 60130644U;
v58.f0 = 313U;
v59.f3 = 7648;
v59.f2 = -55798035;
v59.f1 = 13799977U;
v59.f0 = 217U;
v60 = v43 - v43;
v61 = v43 - v43;
v62 = (*v4) (v58, v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}
