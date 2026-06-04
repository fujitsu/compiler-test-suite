#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
struct ss1 v1 (signed short);
struct ss1 (*v2) (signed short) = v1;
unsigned short v3 (union uu1);
unsigned short (*v4) (union uu1) = v3;
extern float v5 (float, signed short);
extern float (*v6) (float, signed short);
signed int v7 (unsigned short);
signed int (*v8) (unsigned short) = v7;
static unsigned int v9 (signed short, signed int);
static unsigned int (*v10) (signed short, signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;
double v27 = 7561678897322754945.22099;
signed short v26 = -3185;
signed int v25 = -1455988916;

static unsigned int v9 (signed short v28, signed int v29)
{
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
{
for (;;) {
double v32 = -3650035192895696308.54716;
union uu0 v31 = {4058290232U };
struct ss0 v30 = { 763036U, 522853U, 40443, };
trace++;
switch (trace)
{
case 1: 
{
signed short v33;
signed int v34;
unsigned int v35;
v33 = -960 - -31982;
v34 = v29 - -1894560176;
v35 = (*v10) (v33, v34);
history[history_index++] = (int)v35;
}
break;
case 2: 
{
signed short v36;
struct ss1 v37;
v36 = -16275 - 8446;
v37 = (*v2) (v36);
history[history_index++] = (int)v37.f3;
history[history_index++] = (int)v37.f2;
history[history_index++] = (int)v37.f1;
history[history_index++] = (int)v37.f0;
}
break;
case 4: 
{
float v38;
signed short v39;
float v40;
v38 = -2005687229.489F;
v39 = 14857 - -10404;
v40 = (*v6) (v38, v39);
history[history_index++] = (int)v40;
}
break;
case 8: 
{
signed short v41;
struct ss1 v42;
v41 = v28 + -23649;
v42 = v1 (v41);
history[history_index++] = (int)v42.f3;
history[history_index++] = (int)v42.f2;
history[history_index++] = (int)v42.f1;
history[history_index++] = (int)v42.f0;
}
break;
case 10: 
{
signed short v43;
struct ss1 v44;
v43 = v28 - -9939;
v44 = (*v2) (v43);
history[history_index++] = (int)v44.f3;
history[history_index++] = (int)v44.f2;
history[history_index++] = (int)v44.f1;
history[history_index++] = (int)v44.f0;
}
break;
case 12: 
return 3427130486U;
case 14: 
return 936405768U;
case 15: 
return 626187722U;
default: abort ();
}
}
}
}

signed int v7 (unsigned short v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
float v48 = -1464931451.11393F;
struct ss1 v47 = { 30189, -65662506, 65290661U, 110U, };
union uu0 v46 = {3354779335U };
trace++;
switch (trace)
{
case 6: 
return 1271446257;
default: abort ();
}
}
}
}

unsigned short v3 (union uu1 v49)
{
history[history_index++] = (int)v49.f2;
{
for (;;) {
unsigned int v52 = 4227222073U;
union uu0 v51 = {772248298U };
unsigned short v50 = 3871;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

struct ss1 v1 (signed short v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 1975282458U;
unsigned int v55 = 1291966771U;
struct ss1 v54 = { 9141, -48870167, 16463565U, 341U, };
trace++;
switch (trace)
{
case 0: 
{
signed short v57;
signed int v58;
unsigned int v59;
v57 = 20194 - v53;
v58 = -1652170265 - -1279363910;
v59 = v9 (v57, v58);
history[history_index++] = (int)v59;
}
break;
case 3: 
{
signed short v60;
signed int v61;
unsigned int v62;
v60 = -8281 + v53;
v61 = -1041034983 + 1446339792;
v62 = (*v10) (v60, v61);
history[history_index++] = (int)v62;
}
break;
case 9: 
{
struct ss1 v63;
v63.f3 = 525;
v63.f2 = 41178055;
v63.f1 = 42804360U;
v63.f0 = 401U;
return v63;
}
case 11: 
{
struct ss1 v64;
v64.f3 = 58959;
v64.f2 = -26365311;
v64.f1 = 50199910U;
v64.f0 = 382U;
return v64;
}
case 13: 
{
struct ss1 v65;
v65.f3 = 64727;
v65.f2 = 1436318;
v65.f1 = 3375746U;
v65.f0 = 403U;
return v65;
}
case 16: 
{
struct ss1 v66;
v66.f3 = 36210;
v66.f2 = 19578969;
v66.f1 = 49808381U;
v66.f0 = 355U;
return v66;
}
default: abort ();
}
}
}
}
