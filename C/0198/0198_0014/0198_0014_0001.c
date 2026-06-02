#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
void v3 (unsigned short);
void (*v4) (unsigned short) = v3;
static signed int v5 (unsigned int, struct ss0, struct ss0, signed short);
static signed int (*v6) (unsigned int, struct ss0, struct ss0, signed short) = v5;
unsigned int v7 (signed short);
unsigned int (*v8) (signed short) = v7;
static signed char v9 (signed short, union uu0, union uu0);
static signed char (*v10) (signed short, union uu0, union uu0) = v9;
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v28 = { 52972, 42963404, 56055770U, 115U, };
signed short v27 = -7261;
signed int v26 = 639001891;

static signed char v9 (signed short v29, union uu0 v30, union uu0 v31)
{
history[history_index++] = (int)v29;
history[history_index++] = (int)v30.f3;
history[history_index++] = (int)v31.f3;
{
for (;;) {
unsigned short v34 = 43520;
union uu0 v33 = {1653687582U };
struct ss0 v32 = { 555925U, 834137U, 33252, };
trace++;
switch (trace)
{
case 7: 
{
signed short v35;
unsigned int v36;
v35 = v29 - v29;
v36 = (*v8) (v35);
history[history_index++] = (int)v36;
}
break;
case 15: 
return -40;
default: abort ();
}
}
}
}

unsigned int v7 (signed short v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
union uu0 v40 = {3075867083U };
signed char v39 = 29;
struct ss1 v38 = { 10878, -56946718, 53914964U, 268U, };
trace++;
switch (trace)
{
case 1: 
return 2671890737U;
case 5: 
{
unsigned int v41;
struct ss0 v42;
struct ss0 v43;
signed short v44;
signed int v45;
v41 = 1790444045U - 1027808894U;
v42.f2 = 381391U;
v42.f1 = 372515U;
v42.f0 = 1879;
v43.f2 = 1044328U;
v43.f1 = 395557U;
v43.f0 = 40169;
v44 = 20704 + -4489;
v45 = (*v6) (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 8: 
{
unsigned int v46;
struct ss0 v47;
struct ss0 v48;
signed short v49;
signed int v50;
v46 = 3892929182U - 4177592005U;
v47.f2 = 913788U;
v47.f1 = 165192U;
v47.f0 = 46055;
v48.f2 = 593831U;
v48.f1 = 1025536U;
v48.f0 = 35362;
v49 = -5391 + -27758;
v50 = v5 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 10: 
{
unsigned int v51;
struct ss0 v52;
struct ss0 v53;
signed short v54;
signed int v55;
v51 = 2244413749U + 504759618U;
v52.f2 = 686384U;
v52.f1 = 354853U;
v52.f0 = 21939;
v53.f2 = 894197U;
v53.f1 = 707576U;
v53.f0 = 36210;
v54 = 22860 - -11243;
v55 = (*v6) (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 12: 
return 438404905U;
case 14: 
return 1267370284U;
case 17: 
return 686192375U;
default: abort ();
}
}
}
}

static signed int v5 (unsigned int v56, struct ss0 v57, struct ss0 v58, signed short v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57.f2;
history[history_index++] = (int)v57.f1;
history[history_index++] = (int)v57.f0;
history[history_index++] = (int)v58.f2;
history[history_index++] = (int)v58.f1;
history[history_index++] = (int)v58.f0;
history[history_index++] = (int)v59;
{
for (;;) {
union uu1 v62 = {-2066975095 };
double v61 = 7768783028164520370.11163;
union uu1 v60 = {-1462937489 };
trace++;
switch (trace)
{
case 6: 
{
signed short v63;
union uu0 v64;
union uu0 v65;
signed char v66;
v63 = v59 + -9420;
v64.f0 = 106;
v65.f3 = 115;
v66 = (*v10) (v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 9: 
{
signed short v67;
unsigned int v68;
v67 = v59 + 26812;
v68 = v7 (v67);
history[history_index++] = (int)v68;
}
break;
case 11: 
return 352132674;
case 13: 
return -769415323;
case 16: 
return -1378586071;
default: abort ();
}
}
}
}

void v3 (unsigned short v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
unsigned short v72 = 26278;
signed int v71 = 610928004;
signed short v70 = 21445;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
