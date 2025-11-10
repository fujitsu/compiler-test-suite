#include <stdio.h>
#include <stdlib.h>
unsigned short v1 (signed char, float, signed char, double);
unsigned short (*v2) (signed char, float, signed char, double) = v1;
unsigned short v3 (float, double);
unsigned short (*v4) (float, double) = v3;
double v5 (signed char, signed char, signed char, unsigned short);
double (*v6) (signed char, signed char, signed char, unsigned short) = v5;
extern unsigned char v7 (unsigned char);
extern unsigned char (*v8) (unsigned char);
extern signed short v9 (double, float, unsigned int);
extern signed short (*v10) (double, float, unsigned int);
extern int history[];
extern int history_index;
extern int trace;

double v5 (signed char v11, signed char v12, signed char v13, unsigned short v14) {
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

unsigned short v3 (float v15, double v16) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
for (;;) {
trace++;
switch (trace) {
case 6: return 111;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned short v1 (signed char v17, float v18, signed char v19, double v20) {
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
for (;;) {
trace++;
switch (trace) {
case 12: return 111;
case 11: return 111;
case 9: 
{
unsigned char v21;
unsigned char v22;
v21='A';
v22 = (*v8) (v21);
history[history_index++] = (int)v22;
return 111;
}
break;
case 7: 
{
unsigned char v23;
unsigned char v24;
v23='A';
v24 = (*v8) (v23);
history[history_index++] = (int)v24;
return 111;
}
break;
case 5: 
{
float v25;
double v26;
unsigned short v27;
v25=1.234;
v26=111111.2222222;
v27 = v3 (v25, v26);
history[history_index++] = (int)v27;
return 111;
}
break;
case 4: 
{
signed char v28;
float v29;
signed char v30;
double v31;
unsigned short v32;
v28='a';
v29=1.234;
v30='a';
v31=111111.2222222;
v32 = (*v2) (v28, v29, v30, v31);
history[history_index++] = (int)v32;
return 111;
}
break;
case 2: 
{
unsigned char v33;
unsigned char v34;
v33='A';
v34 = (*v8) (v33);
history[history_index++] = (int)v34;
return 111;
}
break;
case 0: 
{
unsigned char v35;
unsigned char v36;
v35='A';
v36 = v7 (v35);
history[history_index++] = (int)v36;
return 111;
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
signed char v37;
float v38;
signed char v39;
double v40;
unsigned short v41;
v37='a';
v38=1.234;
v39='a';
v40=111111.2222222;
v41 = (*v2) (v37, v38, v39, v40);
history[history_index++] = (int)v41;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
