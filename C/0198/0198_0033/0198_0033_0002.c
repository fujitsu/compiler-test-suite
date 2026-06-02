#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
void v1 (void);
void (*v2) (void) = v1;
static struct ss0 v3 (signed char, unsigned int);
static struct ss0 (*v4) (signed char, unsigned int) = v3;
static struct ss1 v5 (unsigned int);
static struct ss1 (*v6) (unsigned int) = v5;
static unsigned short v7 (union uu0, union uu0);
static unsigned short (*v8) (union uu0, union uu0) = v7;
extern void v9 (struct ss0, struct ss0, signed int, unsigned char);
extern void (*v10) (struct ss0, struct ss0, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v28 = -19;
struct ss0 v27 = { 279254U, 664474U, 60367, };
signed short v26 = 4989;

static unsigned short v7 (union uu0 v29, union uu0 v30)
{
history[history_index++] = (int)v29.f3;
history[history_index++] = (int)v30.f3;
{
for (;;) {
struct ss1 v33 = { 24978, 49244571, 56354254U, 264U, };
signed char v32 = 91;
unsigned short v31 = 6197;
trace++;
switch (trace)
{
case 10: 
return 2510;
default: abort ();
}
}
}
}

static struct ss1 v5 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
struct ss0 v37 = { 617527U, 489154U, 2372, };
union uu0 v36 = {2708517611U };
unsigned char v35 = 213;
trace++;
switch (trace)
{
case 4: 
{
struct ss1 v38;
v38.f3 = 12875;
v38.f2 = -49694248;
v38.f1 = 35416943U;
v38.f0 = 67U;
return v38;
}
case 6: 
{
struct ss1 v39;
v39.f3 = 32799;
v39.f2 = 66045631;
v39.f1 = 41008404U;
v39.f0 = 188U;
return v39;
}
default: abort ();
}
}
}
}

static struct ss0 v3 (signed char v40, unsigned int v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = -110;
struct ss0 v43 = { 929760U, 971901U, 58575, };
signed short v42 = -19588;
trace++;
switch (trace)
{
case 1: 
{
signed char v45;
unsigned int v46;
struct ss0 v47;
v45 = 65 - v44;
v46 = 3329705024U + 2893990122U;
v47 = v3 (v45, v46);
history[history_index++] = (int)v47.f2;
history[history_index++] = (int)v47.f1;
history[history_index++] = (int)v47.f0;
}
break;
case 2: 
{
struct ss0 v48;
v48.f2 = 187424U;
v48.f1 = 864741U;
v48.f0 = 47964;
return v48;
}
case 3: 
{
unsigned int v49;
struct ss1 v50;
v49 = v41 + 1438105152U;
v50 = v5 (v49);
history[history_index++] = (int)v50.f3;
history[history_index++] = (int)v50.f2;
history[history_index++] = (int)v50.f1;
history[history_index++] = (int)v50.f0;
}
break;
case 5: 
{
unsigned int v51;
struct ss1 v52;
v51 = v41 + 2862571291U;
v52 = (*v6) (v51);
history[history_index++] = (int)v52.f3;
history[history_index++] = (int)v52.f2;
history[history_index++] = (int)v52.f1;
history[history_index++] = (int)v52.f0;
}
break;
case 7: 
{
struct ss0 v53;
v53.f2 = 201449U;
v53.f1 = 387019U;
v53.f0 = 51246;
return v53;
}
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
signed char v56 = -117;
union uu1 v55 = {-1115121001 };
signed char v54 = 26;
trace++;
switch (trace)
{
case 0: 
{
signed char v57;
unsigned int v58;
struct ss0 v59;
v57 = 103 + v54;
v58 = 541195785U + 777326393U;
v59 = v3 (v57, v58);
history[history_index++] = (int)v59.f2;
history[history_index++] = (int)v59.f1;
history[history_index++] = (int)v59.f0;
}
break;
case 8: 
return;
case 9: 
{
union uu0 v60;
union uu0 v61;
unsigned short v62;
v60.f3 = v56;
v61.f0 = 37;
v62 = (*v8) (v60, v61);
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
