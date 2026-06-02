#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned int v1 (unsigned short, union uu0, signed int);
unsigned int (*v2) (unsigned short, union uu0, signed int) = v1;
static float v3 (signed short);
static float (*v4) (signed short) = v3;
static unsigned char v5 (struct ss0);
static unsigned char (*v6) (struct ss0) = v5;
static struct ss0 v7 (unsigned int);
static struct ss0 (*v8) (unsigned int) = v7;
extern struct ss0 v9 (union uu0, signed char);
extern struct ss0 (*v10) (union uu0, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v22 = 115;
unsigned char v21 = 26;
unsigned short v20 = 44280;

static struct ss0 v7 (unsigned int v23)
{
history[history_index++] = (int)v23;
{
for (;;) {
struct ss1 v26 = { 34900, -1497477, 27299997U, 1U, };
struct ss0 v25 = { 794850U, 453655U, 35361, };
signed int v24 = -1869400589;
trace++;
switch (trace)
{
case 1: 
{
struct ss0 v27;
v27.f2 = 465244U;
v27.f1 = 162681U;
v27.f0 = 23013;
return v27;
}
case 4: 
{
struct ss0 v28;
v28.f2 = 1009798U;
v28.f1 = 22202U;
v28.f0 = 39809;
return v28;
}
default: abort ();
}
}
}
}

static unsigned char v5 (struct ss0 v29)
{
history[history_index++] = (int)v29.f2;
history[history_index++] = (int)v29.f1;
history[history_index++] = (int)v29.f0;
{
for (;;) {
float v32 = 633718051.29946F;
union uu0 v31 = {332145665U };
union uu0 v30 = {889999402U };
trace++;
switch (trace)
{
case 6: 
{
union uu0 v33;
signed char v34;
struct ss0 v35;
v33.f3 = 65;
v34 = -100 + -124;
v35 = v9 (v33, v34);
history[history_index++] = (int)v35.f2;
history[history_index++] = (int)v35.f1;
history[history_index++] = (int)v35.f0;
}
break;
case 8: 
{
struct ss0 v36;
unsigned char v37;
v36.f2 = 934735U;
v36.f1 = 988657U;
v36.f0 = 62107;
v37 = (*v6) (v36);
history[history_index++] = (int)v37;
}
break;
case 9: 
return 17;
case 10: 
{
struct ss0 v38;
unsigned char v39;
v38.f2 = 985664U;
v38.f1 = 342739U;
v38.f0 = 62186;
v39 = (*v6) (v38);
history[history_index++] = (int)v39;
}
break;
case 11: 
return 218;
case 12: 
return 213;
default: abort ();
}
}
}
}

static float v3 (signed short v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = -56;
float v42 = -1016675815.59975F;
signed char v41 = -58;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v44;
struct ss0 v45;
v44 = 1495482929U - 3718283222U;
v45 = (*v8) (v44);
history[history_index++] = (int)v45.f2;
history[history_index++] = (int)v45.f1;
history[history_index++] = (int)v45.f0;
}
break;
case 5: 
{
struct ss0 v46;
unsigned char v47;
v46.f2 = 703120U;
v46.f1 = 525008U;
v46.f0 = 1797;
v47 = (*v6) (v46);
history[history_index++] = (int)v47;
}
break;
case 13: 
return v42;
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v48, union uu0 v49, signed int v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49.f3;
history[history_index++] = (int)v50;
{
for (;;) {
union uu0 v53 = {1403359244U };
struct ss0 v52 = { 612032U, 885278U, 38221, };
struct ss0 v51 = { 785087U, 483600U, 41994, };
trace++;
switch (trace)
{
case 0: 
{
unsigned int v54;
struct ss0 v55;
v54 = 574730068U + 2243934296U;
v55 = v7 (v54);
history[history_index++] = (int)v55.f2;
history[history_index++] = (int)v55.f1;
history[history_index++] = (int)v55.f0;
}
break;
case 2: 
{
signed short v56;
float v57;
v56 = -25519 - -29916;
v57 = (*v4) (v56);
history[history_index++] = (int)v57;
}
break;
case 14: 
return 2021660089U;
default: abort ();
}
}
}
}
