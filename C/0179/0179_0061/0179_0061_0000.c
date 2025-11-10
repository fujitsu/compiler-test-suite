#include <stdio.h>
#include <stdlib.h>
signed short v1 (unsigned int, signed short, signed short, signed short);
signed short (*v2) (unsigned int, signed short, signed short, signed short) = v1;
extern void v3 (unsigned short, signed int, unsigned char, signed int);
extern void (*v4) (unsigned short, signed int, unsigned char, signed int);
signed int v5 (unsigned char, float, signed char, unsigned char);
signed int (*v6) (unsigned char, float, signed char, unsigned char) = v5;
extern float v7 (signed int, double, float);
extern float (*v8) (signed int, double, float);
extern float v9 (signed char, signed int, unsigned char, float);
extern float (*v10) (signed char, signed int, unsigned char, float);
extern int history[];
extern int history_index;
extern int trace;

signed int v5 (unsigned char v11, float v12, signed char v13, unsigned char v14) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 2: return -199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v1 (unsigned int v15, signed short v16, signed short v17, signed short v18) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
case 8: return -111;
case 6: 
{
unsigned short v19;
signed int v20;
unsigned char v21;
signed int v22;
v19=111;
v20=-199999;
v21='A';
v22=-199999;
v3 (v19, v20, v21, v22);
return -111;
}
break;
case 4: 
{
unsigned short v23;
signed int v24;
unsigned char v25;
signed int v26;
v23=111;
v24=-199999;
v25='A';
v26=-199999;
(*v4) (v23, v24, v25, v26);
return -111;
}
break;
case 0: 
{
unsigned short v27;
signed int v28;
unsigned char v29;
signed int v30;
v27=111;
v28=-199999;
v29='A';
v30=-199999;
v3 (v27, v28, v29, v30);
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
unsigned int v31;
signed short v32;
signed short v33;
signed short v34;
signed short v35;
v31=199999;
v32=-111;
v33=-111;
v34=-111;
v35 = v1 (v31, v32, v33, v34);
history[history_index++] = (int)v35;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
