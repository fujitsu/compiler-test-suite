#include <stdio.h>
#include <stdlib.h>
unsigned int v1 (signed short, double, float, unsigned int);
unsigned int (*v2) (signed short, double, float, unsigned int) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern float v5 (signed char, signed int, signed short);
extern float (*v6) (signed char, signed int, signed short);
unsigned char v7 (signed short, unsigned short, unsigned char, float);
unsigned char (*v8) (signed short, unsigned short, unsigned char, float) = v7;
float v9 (void);
float (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;

float v9 (void) {
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

unsigned char v7 (signed short v11, unsigned short v12, unsigned char v13, float v14) {
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

unsigned int v1 (signed short v15, double v16, float v17, unsigned int v18) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
case 4: return 199999;
case 2: 
{
signed char v19;
signed int v20;
signed short v21;
float v22;
v19='a';
v20=-199999;
v21=-111;
v22 = (*v6) (v19, v20, v21);
history[history_index++] = (int)v22;
return 199999;
}
break;
case 1: return 199999;
case 0: 
{
signed short v23;
double v24;
float v25;
unsigned int v26;
unsigned int v27;
v23=-111;
v24=111111.2222222;
v25=1.234;
v26=199999;
v27 = (*v2) (v23, v24, v25, v26);
history[history_index++] = (int)v27;
return 199999;
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
signed short v28;
double v29;
float v30;
unsigned int v31;
unsigned int v32;
v28=-111;
v29=111111.2222222;
v30=1.234;
v31=199999;
v32 = v1 (v28, v29, v30, v31);
history[history_index++] = (int)v32;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
