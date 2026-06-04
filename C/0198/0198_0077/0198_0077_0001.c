#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
void v1 (struct ss0, signed char);
void (*v2) (struct ss0, signed char) = v1;
static struct ss0 v3 (signed short);
static struct ss0 (*v4) (signed short) = v3;
extern float v5 (void);
extern float (*v6) (void);
static struct ss0 v7 (void);
static struct ss0 (*v8) (void) = v7;
static float v9 (struct ss1);
static float (*v10) (struct ss1) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed short v23 = -24067;
unsigned short v22 = 21830;
struct ss0 v21 = { 373222U, 828306U, 30828, };

static float v9 (struct ss1 v24)
{
history[history_index++] = (int)v24.f3;
history[history_index++] = (int)v24.f2;
history[history_index++] = (int)v24.f1;
history[history_index++] = (int)v24.f0;
{
for (;;) {
union uu0 v27 = {2421608549U };
double v26 = -1283062852696563727.43806;
signed short v25 = 15225;
trace++;
switch (trace)
{
case 5: 
{
struct ss0 v28;
v28 = (*v8) ();
history[history_index++] = (int)v28.f2;
history[history_index++] = (int)v28.f1;
history[history_index++] = (int)v28.f0;
}
break;
case 7: 
return -220173657.17192F;
case 9: 
return -442184186.51989F;
default: abort ();
}
}
}
}

static struct ss0 v7 (void)
{
{
for (;;) {
float v31 = -718359560.48655F;
union uu1 v30 = {-972434866 };
struct ss0 v29 = { 563128U, 889059U, 61647, };
trace++;
switch (trace)
{
case 1: 
{
struct ss0 v32;
v32.f2 = 431946U;
v32.f1 = 637767U;
v32.f0 = 31569;
return v32;
}
case 6: 
{
struct ss1 v33;
float v34;
v33.f3 = 26222;
v33.f2 = -57532441;
v33.f1 = 53515305U;
v33.f0 = 40U;
v34 = (*v10) (v33);
history[history_index++] = (int)v34;
}
break;
case 8: 
{
struct ss0 v35;
v35.f2 = 679965U;
v35.f1 = 331805U;
v35.f0 = 31352;
return v35;
}
default: abort ();
}
}
}
}

static struct ss0 v3 (signed short v36)
{
history[history_index++] = (int)v36;
{
for (;;) {
double v39 = -6902145067500900024.47119;
union uu0 v38 = {2289394553U };
struct ss0 v37 = { 798102U, 449847U, 13802, };
trace++;
switch (trace)
{
case 3: 
{
struct ss0 v40;
signed char v41;
v40.f2 = 825527U;
v40.f1 = 907378U;
v40.f0 = 21001;
v41 = -11 - 84;
(*v2) (v40, v41);
}
break;
case 11: 
{
struct ss0 v42;
v42.f2 = 793154U;
v42.f1 = 500426U;
v42.f0 = 28699;
return v42;
}
case 13: 
{
struct ss0 v43;
v43.f2 = 423524U;
v43.f1 = 13933U;
v43.f0 = 13958;
return v43;
}
default: abort ();
}
}
}
}

void v1 (struct ss0 v44, signed char v45)
{
history[history_index++] = (int)v44.f2;
history[history_index++] = (int)v44.f1;
history[history_index++] = (int)v44.f0;
history[history_index++] = (int)v45;
{
for (;;) {
signed int v48 = -36140431;
struct ss1 v47 = { 47722, 58521924, 37202595U, 329U, };
struct ss1 v46 = { 20191, -62183409, 3708525U, 26U, };
trace++;
switch (trace)
{
case 0: 
{
struct ss0 v49;
v49 = v7 ();
history[history_index++] = (int)v49.f2;
history[history_index++] = (int)v49.f1;
history[history_index++] = (int)v49.f0;
}
break;
case 2: 
{
signed short v50;
struct ss0 v51;
v50 = -15390 - -23904;
v51 = v3 (v50);
history[history_index++] = (int)v51.f2;
history[history_index++] = (int)v51.f1;
history[history_index++] = (int)v51.f0;
}
break;
case 4: 
{
struct ss1 v52;
float v53;
v52.f3 = 36698;
v52.f2 = -46217098;
v52.f1 = 16661329U;
v52.f0 = 432U;
v53 = v9 (v52);
history[history_index++] = (int)v53;
}
break;
case 10: 
{
signed short v54;
struct ss0 v55;
v54 = -26267 - 23791;
v55 = (*v4) (v54);
history[history_index++] = (int)v55.f2;
history[history_index++] = (int)v55.f1;
history[history_index++] = (int)v55.f0;
}
break;
case 12: 
return;
case 14: 
return;
default: abort ();
}
}
}
}
