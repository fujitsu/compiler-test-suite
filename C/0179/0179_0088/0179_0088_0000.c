#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
float v3 (unsigned short);
float (*v4) (unsigned short) = v3;
double v5 (float);
double (*v6) (float) = v5;
extern signed int v7 (float);
extern signed int (*v8) (float);
unsigned int v9 (signed int, signed short, unsigned int);
unsigned int (*v10) (signed int, signed short, unsigned int) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (signed int v11, signed short v12, unsigned int v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
for (;;) {
trace++;
switch (trace) {
case 17: return 199999;
case 15: return 199999;
case 12: return 199999;
case 10: 
{
float v14;
double v15;
v14=1.234;
v15 = v5 (v14);
history[history_index++] = (int)v15;
return 199999;
}
break;
case 7: 
{
float v16;
double v17;
v16=1.234;
v17 = (*v6) (v16);
history[history_index++] = (int)v17;
return 199999;
}
break;
case 5: 
{
float v18;
double v19;
v18=1.234;
v19 = v5 (v18);
history[history_index++] = (int)v19;
return 199999;
}
break;
case 2: return 199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

double v5 (float v20) {
history[history_index++] = (int)v20;
for (;;) {
trace++;
switch (trace) {
case 19: return 111111.2222222;
case 18: return 111111.2222222;
case 16: return 111111.2222222;
case 14: return 111111.2222222;
case 13: return 111111.2222222;
case 11: return 111111.2222222;
case 9: 
{
signed int v21;
signed short v22;
unsigned int v23;
unsigned int v24;
v21=-199999;
v22=-111;
v23=199999;
v24 = v9 (v21, v22, v23);
history[history_index++] = (int)v24;
return 111111.2222222;
}
break;
case 8: 
{
float v25;
double v26;
v25=1.234;
v26 = (*v6) (v25);
history[history_index++] = (int)v26;
return 111111.2222222;
}
break;
case 6: 
{
signed int v27;
signed short v28;
unsigned int v29;
unsigned int v30;
v27=-199999;
v28=-111;
v29=199999;
v30 = (*v10) (v27, v28, v29);
history[history_index++] = (int)v30;
return 111111.2222222;
}
break;
case 4: 
{
signed int v31;
signed short v32;
unsigned int v33;
unsigned int v34;
v31=-199999;
v32=-111;
v33=199999;
v34 = (*v10) (v31, v32, v33);
history[history_index++] = (int)v34;
return 111111.2222222;
}
break;
case 3: 
{
float v35;
double v36;
v35=1.234;
v36 = v5 (v35);
history[history_index++] = (int)v36;
return 111111.2222222;
}
break;
case 1: 
{
signed int v37;
signed short v38;
unsigned int v39;
unsigned int v40;
v37=-199999;
v38=-111;
v39=199999;
v40 = (*v10) (v37, v38, v39);
history[history_index++] = (int)v40;
return 111111.2222222;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

float v3 (unsigned short v41) {
history[history_index++] = (int)v41;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
signed int v42;
v42 = (*v2) ();
history[history_index++] = (int)v42;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
