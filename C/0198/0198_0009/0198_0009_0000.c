#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed short v1 (struct ss1, struct ss1, struct ss1);
signed short (*v2) (struct ss1, struct ss1, struct ss1) = v1;
static unsigned int v3 (signed char);
static unsigned int (*v4) (signed char) = v3;
static void v5 (struct ss0);
static void (*v6) (struct ss0) = v5;
extern void v7 (double, signed int);
extern void (*v8) (double, signed int);
void v9 (double, signed int, unsigned short, signed short);
void (*v10) (double, signed int, unsigned short, signed short) = v9;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v13 = 15119;
signed int v12 = -2139792505;
union uu1 v11 = {815193586 };

void v9 (double v14, signed int v15, unsigned short v16, signed short v17)
{
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
{
for (;;) {
unsigned int v20 = 3445561962U;
signed short v19 = 8599;
union uu0 v18 = {3085037525U };
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v5 (struct ss0 v21)
{
history[history_index++] = (int)v21.f2;
history[history_index++] = (int)v21.f1;
history[history_index++] = (int)v21.f0;
{
for (;;) {
unsigned short v24 = 55902;
struct ss1 v23 = { 39978, -38226809, 3446207U, 278U, };
unsigned short v22 = 22075;
trace++;
switch (trace)
{
case 3: 
{
struct ss0 v25;
v25.f2 = 945134U;
v25.f1 = 395185U;
v25.f0 = v24;
(*v6) (v25);
}
break;
case 4: 
{
struct ss0 v26;
v26.f2 = 75359U;
v26.f1 = 740199U;
v26.f0 = 1204;
(*v6) (v26);
}
break;
case 5: 
{
struct ss1 v27;
struct ss1 v28;
struct ss1 v29;
signed short v30;
v27.f3 = v24;
v27.f2 = -37587646;
v27.f1 = 62088600U;
v27.f0 = 116U;
v28.f3 = 39581;
v28.f2 = 29999396;
v28.f1 = 41556141U;
v28.f0 = 5U;
v29.f3 = v22;
v29.f2 = 26588098;
v29.f1 = 10029927U;
v29.f0 = 326U;
v30 = v1 (v27, v28, v29);
history[history_index++] = (int)v30;
}
break;
case 15: 
return;
case 16: 
return;
case 17: 
return;
default: abort ();
}
}
}
}

static unsigned int v3 (signed char v31)
{
history[history_index++] = (int)v31;
{
for (;;) {
signed int v34 = -1047508105;
unsigned short v33 = 1774;
unsigned int v32 = 2563493776U;
trace++;
switch (trace)
{
case 1: 
return v32;
default: abort ();
}
}
}
}

signed short v1 (struct ss1 v35, struct ss1 v36, struct ss1 v37)
{
history[history_index++] = (int)v35.f3;
history[history_index++] = (int)v35.f2;
history[history_index++] = (int)v35.f1;
history[history_index++] = (int)v35.f0;
history[history_index++] = (int)v36.f3;
history[history_index++] = (int)v36.f2;
history[history_index++] = (int)v36.f1;
history[history_index++] = (int)v36.f0;
history[history_index++] = (int)v37.f3;
history[history_index++] = (int)v37.f2;
history[history_index++] = (int)v37.f1;
history[history_index++] = (int)v37.f0;
{
for (;;) {
union uu0 v40 = {2551749310U };
signed char v39 = 100;
float v38 = -286902234.6687F;
trace++;
switch (trace)
{
case 0: 
{
signed char v41;
unsigned int v42;
v41 = 110 + 55;
v42 = (*v4) (v41);
history[history_index++] = (int)v42;
}
break;
case 2: 
{
struct ss0 v43;
v43.f2 = 1044272U;
v43.f1 = 911544U;
v43.f0 = 29206;
(*v6) (v43);
}
break;
case 6: 
{
struct ss1 v44;
struct ss1 v45;
struct ss1 v46;
signed short v47;
v44.f3 = 35012;
v44.f2 = 4972436;
v44.f1 = 23784630U;
v44.f0 = 102U;
v45.f3 = 18421;
v45.f2 = -50236154;
v45.f1 = 26918319U;
v45.f0 = 339U;
v46.f3 = 46720;
v46.f2 = 21963890;
v46.f1 = 54254543U;
v46.f0 = 7U;
v47 = (*v2) (v44, v45, v46);
history[history_index++] = (int)v47;
}
break;
case 7: 
{
double v48;
signed int v49;
#if defined(__aarch64__)
 v48 =-2147483648;
#else
v48 = -569383925332755990.35;  
#endif
v49 = 716223332 - -157377311;
v7 (v48, v49);
}
break;
case 9: 
{
struct ss1 v50;
struct ss1 v51;
struct ss1 v52;
signed short v53;
v50.f3 = 61483;
v50.f2 = -56391315;
v50.f1 = 11365633U;
v50.f0 = 314U;
v51.f3 = 40281;
v51.f2 = 5565804;
v51.f1 = 55943121U;
v51.f0 = 186U;
v52.f3 = 65001;
v52.f2 = 66686975;
v52.f1 = 4994763U;
v52.f0 = 155U;
v53 = (*v2) (v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 10: 
return 31358;
case 11: 
return 3396;
case 13: 
return 22559;
case 14: 
return 13937;
case 18: 
return 8983;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
struct ss1 v56;
struct ss1 v57;
struct ss1 v58;
signed short v59;
v56.f3 = v13;
v56.f2 = 11253648;
v56.f1 = 19544145U;
v56.f0 = 431U;
v57.f3 = 52391;
v57.f2 = 21869500;
v57.f1 = 36665968U;
v57.f0 = 204U;
v58.f3 = 49224;
v58.f2 = -65688198;
v58.f1 = 9681746U;
v58.f0 = 330U;
v59 = v1 (v56, v57, v58);
history[history_index++] = (int)v59;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
