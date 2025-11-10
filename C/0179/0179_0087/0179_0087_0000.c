#include <stdio.h>
#include <stdlib.h>
signed short v1 (signed int);
signed short (*v2) (signed int) = v1;
unsigned int v3 (unsigned short, signed char, signed char, float);
unsigned int (*v4) (unsigned short, signed char, signed char, float) = v3;
extern signed char v5 (double, unsigned short);
extern signed char (*v6) (double, unsigned short);
unsigned short v7 (unsigned char, unsigned short, unsigned char, signed short);
unsigned short (*v8) (unsigned char, unsigned short, unsigned char, signed short) = v7;
extern unsigned int v9 (float, double, float, float);
extern unsigned int (*v10) (float, double, float, float);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v7 (unsigned char v11, unsigned short v12, unsigned char v13, signed short v14) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned int v3 (unsigned short v15, signed char v16, signed char v17, float v18) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v1 (signed int v19) {
history[history_index++] = (int)v19;
for (;;) {
trace++;
switch (trace) {
case 12: return -111;
case 11: return -111;
case 10: 
{
signed int v20;
signed short v21;
v20=-199999;
v21 = (*v2) (v20);
history[history_index++] = (int)v21;
return -111;
}
break;
case 8: 
{
float v22;
double v23;
float v24;
float v25;
unsigned int v26;
v22=1.234;
v23=111111.2222222;
v24=1.234;
v25=1.234;
v26 = (*v10) (v22, v23, v24, v25);
history[history_index++] = (int)v26;
return -111;
}
break;
case 6: 
{
double v27;
unsigned short v28;
signed char v29;
v27=111111.2222222;
v28=111;
v29 = v5 (v27, v28);
history[history_index++] = (int)v29;
return -111;
}
break;
case 4: 
{
double v30;
unsigned short v31;
signed char v32;
v30=111111.2222222;
v31=111;
v32 = (*v6) (v30, v31);
history[history_index++] = (int)v32;
return -111;
}
break;
case 3: return -111;
case 2: return -111;
case 1: 
{
signed int v33;
signed short v34;
v33=-199999;
v34 = v1 (v33);
history[history_index++] = (int)v34;
return -111;
}
break;
case 0: 
{
signed int v35;
signed short v36;
v35=-199999;
v36 = (*v2) (v35);
history[history_index++] = (int)v36;
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
signed int v37;
signed short v38;
v37=-199999;
v38 = (*v2) (v37);
history[history_index++] = (int)v38;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
