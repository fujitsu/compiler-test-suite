#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed int v1 (unsigned char);
extern signed int (*v2) (unsigned char);
static signed int v3 (signed short, signed short);
static signed int (*v4) (signed short, signed short) = v3;
static signed char v5 (struct ss0, signed short, struct ss0);
static signed char (*v6) (struct ss0, signed short, struct ss0) = v5;
signed short v7 (void);
signed short (*v8) (void) = v7;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v35 = 32587;
signed short v34 = 23277;
float v33 = -132716222.7791F;

signed short v7 (void)
{
{
for (;;) {
signed char v38 = 70;
float v37 = -438319925.55706F;
double v36 = 2053337469893606338.48901;
trace++;
switch (trace)
{
case 3: 
{
signed short v39;
signed short v40;
signed int v41;
v39 = -7096 + -25708;
v40 = 24962 + -12670;
v41 = (*v4) (v39, v40);
history[history_index++] = (int)v41;
}
break;
case 8: 
{
struct ss0 v42;
signed short v43;
struct ss0 v44;
signed char v45;
v42.f2 = 14029U;
v42.f1 = 321235U;
v42.f0 = 22233;
v43 = -29546 - 1235;
v44.f2 = 230837U;
v44.f1 = 471687U;
v44.f0 = 21755;
v45 = (*v6) (v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 10: 
{
struct ss0 v46;
signed short v47;
struct ss0 v48;
signed char v49;
v46.f2 = 710147U;
v46.f1 = 89916U;
v46.f0 = 30743;
v47 = 4965 - 32176;
v48.f2 = 260780U;
v48.f1 = 724879U;
v48.f0 = 26829;
v49 = (*v6) (v46, v47, v48);
history[history_index++] = (int)v49;
}
break;
case 12: 
return -25241;
case 14: 
return 22672;
case 17: 
return 8764;
default: abort ();
}
}
}
}

static signed char v5 (struct ss0 v50, signed short v51, struct ss0 v52)
{
history[history_index++] = (int)v50.f2;
history[history_index++] = (int)v50.f1;
history[history_index++] = (int)v50.f0;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52.f2;
history[history_index++] = (int)v52.f1;
history[history_index++] = (int)v52.f0;
{
for (;;) {
unsigned char v55 = 47;
float v54 = -348074997.59973F;
signed char v53 = -75;
trace++;
switch (trace)
{
case 9: 
{
signed short v56;
v56 = v7 ();
history[history_index++] = (int)v56;
}
break;
case 11: 
return v53;
case 13: 
return v53;
default: abort ();
}
}
}
}

static signed int v3 (signed short v57, signed short v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
struct ss0 v61 = { 574233U, 130282U, 38175, };
double v60 = 2926539263566258217.27199;
signed char v59 = -51;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v62;
signed int v63;
v62 = 244 - 69;
v63 = (*v2) (v62);
history[history_index++] = (int)v63;
}
break;
case 6: 
{
unsigned char v64;
signed int v65;
v64 = 0 - 221;
v65 = (*v2) (v64);
history[history_index++] = (int)v65;
}
break;
case 16: 
return -1170050746;
default: abort ();
}
}
}
}
