#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned short v1 (unsigned char);
unsigned short (*v2) (unsigned char) = v1;
static unsigned char v3 (float);
static unsigned char (*v4) (float) = v3;
extern unsigned short v5 (signed short, unsigned int, struct ss0);
extern unsigned short (*v6) (signed short, unsigned int, struct ss0);
double v7 (signed char, union uu1, float, struct ss1);
double (*v8) (signed char, union uu1, float, struct ss1) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v44 = -30528;
struct ss1 v43 = { 60639, 25448057, 62451964U, 260U, };
unsigned short v42 = 53742;

double v7 (signed char v45, union uu1 v46, float v47, struct ss1 v48)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46.f2;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48.f3;
history[history_index++] = (int)v48.f2;
history[history_index++] = (int)v48.f1;
history[history_index++] = (int)v48.f0;
{
for (;;) {
union uu1 v51 = {1539835983 };
signed char v50 = -110;
signed char v49 = -25;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v3 (float v52)
{
history[history_index++] = (int)v52;
{
for (;;) {
struct ss0 v55 = { 848544U, 386309U, 22311, };
double v54 = 3615189553496070482.52199;
union uu0 v53 = {3564413647U };
trace++;
switch (trace)
{
case 1: 
{
signed int v56;
v56 = (*v10) ();
history[history_index++] = (int)v56;
}
break;
case 3: 
{
signed int v57;
v57 = (*v10) ();
history[history_index++] = (int)v57;
}
break;
case 11: 
return 203;
default: abort ();
}
}
}
}

unsigned short v1 (unsigned char v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
union uu1 v61 = {638152508 };
float v60 = -689266246.5571F;
unsigned short v59 = 58776;
trace++;
switch (trace)
{
case 0: 
{
float v62;
unsigned char v63;
v62 = -685267456.8045F;
v63 = (*v4) (v62);
history[history_index++] = (int)v63;
}
break;
case 12: 
return 58856;
default: abort ();
}
}
}
}
