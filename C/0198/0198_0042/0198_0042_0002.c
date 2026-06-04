#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern signed int v3 (union uu0, unsigned char, signed int, struct ss1);
extern signed int (*v4) (union uu0, unsigned char, signed int, struct ss1);
extern unsigned int v5 (signed char, struct ss1, unsigned int);
extern unsigned int (*v6) (signed char, struct ss1, unsigned int);
extern signed char v7 (unsigned short, signed short, signed short);
extern signed char (*v8) (unsigned short, signed short, signed short);
extern signed char v9 (float);
extern signed char (*v10) (float);
extern int history[];
extern int history_index;
extern int trace;
double v45 = -6811935935353588664.39802;
union uu1 v44 = {487247666 };
struct ss1 v43 = { 54797, 41364130, 12613131U, 449U, };

unsigned int v1 (void)
{
{
for (;;) {
unsigned char v48 = 133;
struct ss1 v47 = { 29428, -34579501, 13240589U, 296U, };
unsigned short v46 = 25353;
trace++;
switch (trace)
{
case 0: 
{
signed char v49;
struct ss1 v50;
unsigned int v51;
unsigned int v52;
v49 = -5 - 81;
v50.f3 = v46;
v50.f2 = -52601471;
v50.f1 = 10959733U;
v50.f0 = 122U;
v51 = 1354983313U - 979951483U;
v52 = (*v6) (v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 2: 
{
signed char v53;
struct ss1 v54;
unsigned int v55;
unsigned int v56;
v53 = -50 + 6;
v54.f3 = 43935;
v54.f2 = -56859312;
v54.f1 = 45263669U;
v54.f0 = 448U;
v55 = 1555369303U - 1997611127U;
v56 = (*v6) (v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 4: 
{
unsigned short v57;
signed short v58;
signed short v59;
signed char v60;
v57 = v46 - v46;
v58 = 6430 + -8649;
v59 = -6081 + 11220;
v60 = (*v8) (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 6: 
return 2161666366U;
case 7: 
return 2427256140U;
case 8: 
{
signed char v61;
struct ss1 v62;
unsigned int v63;
unsigned int v64;
v61 = -95 + 104;
v62.f3 = v46;
v62.f2 = 46997341;
v62.f1 = 26533199U;
v62.f0 = 426U;
v63 = 1996486001U - 2229814721U;
v64 = (*v6) (v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 10: 
{
float v65;
signed char v66;
v65 = 1936224077.2370F;
v66 = (*v10) (v65);
history[history_index++] = (int)v66;
}
break;
case 12: 
return 946317163U;
default: abort ();
}
}
}
}
