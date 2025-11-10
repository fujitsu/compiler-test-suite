#include <stdio.h>
#include <stdlib.h>
signed short v1 (float, double, double);
signed short (*v2) (float, double, double) = v1;
extern float v3 (unsigned int);
extern float (*v4) (unsigned int);
float v5 (double, double, unsigned int, signed short);
float (*v6) (double, double, unsigned int, signed short) = v5;
extern double v7 (signed int, unsigned short);
extern double (*v8) (signed int, unsigned short);
signed char v9 (signed short, float, double, signed short);
signed char (*v10) (signed short, float, double, signed short) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed char v9 (signed short v11, float v12, double v13, signed short v14) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 14: return 'a';
case 8: 
{
signed int v15;
unsigned short v16;
double v17;
v15=-199999;
v16=111;
v17 = (*v8) (v15, v16);
history[history_index++] = (int)v17;
return 'a';
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

float v5 (double v18, double v19, unsigned int v20, signed short v21) {
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
for (;;) {
trace++;
switch (trace) {
case 3: return 1.234;
case 2: return 1.234;
case 1: 
{
double v22;
double v23;
unsigned int v24;
signed short v25;
float v26;
v22=111111.2222222;
v23=111111.2222222;
v24=199999;
v25=-111;
v26 = (*v6) (v22, v23, v24, v25);
history[history_index++] = (int)v26;
return 1.234;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v1 (float v27, double v28, double v29) {
history[history_index++] = (int)v27;
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
for (;;) {
trace++;
switch (trace) {
case 18: return -111;
case 16: return -111;
case 12: return -111;
case 10: 
{
unsigned int v30;
float v31;
v30=199999;
v31 = (*v4) (v30);
history[history_index++] = (int)v31;
return -111;
}
break;
case 6: 
{
unsigned int v32;
float v33;
v32=199999;
v33 = (*v4) (v32);
history[history_index++] = (int)v33;
return -111;
}
break;
case 4: 
{
signed int v34;
unsigned short v35;
double v36;
v34=-199999;
v35=111;
v36 = v7 (v34, v35);
history[history_index++] = (int)v36;
return -111;
}
break;
case 0: 
{
double v37;
double v38;
unsigned int v39;
signed short v40;
float v41;
v37=111111.2222222;
v38=111111.2222222;
v39=199999;
v40=-111;
v41 = (*v6) (v37, v38, v39, v40);
history[history_index++] = (int)v41;
return -111;
}
break;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
float v42;
double v43;
double v44;
signed short v45;
v42=1.234;
v43=111111.2222222;
v44=111111.2222222;
v45 = (*v2) (v42, v43, v44);
history[history_index++] = (int)v45;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
