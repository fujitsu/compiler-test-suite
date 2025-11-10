#include <stdio.h>
#include <stdlib.h>
signed short v1 (signed int);
signed short (*v2) (signed int) = v1;
extern signed int v3 (unsigned int, double, signed char, signed char);
extern signed int (*v4) (unsigned int, double, signed char, signed char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
float v7 (double, unsigned int, unsigned char, float);
float (*v8) (double, unsigned int, unsigned char, float) = v7;
extern float v9 (float, double, unsigned short);
extern float (*v10) (float, double, unsigned short);
extern int history[];
extern int history_index;
extern int trace;

float v7 (double v11, unsigned int v12, unsigned char v13, float v14) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 10: return 1.234;
case 2: return 1.234;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v1 (signed int v15) {
history[history_index++] = (int)v15;
for (;;) {
trace++;
switch (trace) {
case 12: return -111;
case 8: return -111;
case 6: 
{
unsigned int v16;
double v17;
signed char v18;
signed char v19;
signed int v20;
v16=199999;
v17=111111.2222222;
v18='a';
v19='a';
v20 = v3 (v16, v17, v18, v19);
history[history_index++] = (int)v20;
return -111;
}
break;
case 4: 
{
unsigned int v21;
double v22;
signed char v23;
signed char v24;
signed int v25;
v21=199999;
v22=111111.2222222;
v23='a';
v24='a';
v25 = (*v4) (v21, v22, v23, v24);
history[history_index++] = (int)v25;
return -111;
}
break;
case 0: 
{
unsigned char v26;
v26 = v5 ();
history[history_index++] = (int)v26;
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
signed int v27;
signed short v28;
v27=-199999;
v28 = (*v2) (v27);
history[history_index++] = (int)v28;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
