#include <stdio.h>
#include <stdlib.h>
float v1 (unsigned char);
float (*v2) (unsigned char) = v1;
unsigned char v3 (double, signed short);
unsigned char (*v4) (double, signed short) = v3;
extern void v5 (signed char, signed short);
extern void (*v6) (signed char, signed short);
extern unsigned char v7 (double, float, float);
extern unsigned char (*v8) (double, float, float);
extern void v9 (signed short, float, signed int);
extern void (*v10) (signed short, float, signed int);
extern int history[];
extern int history_index;
extern int trace;

unsigned char v3 (double v11, signed short v12) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
for (;;) {
trace++;
switch (trace) {
case 13: return 'A';
case 9: return 'A';
case 7: 
{
unsigned char v13;
float v14;
v13='A';
v14 = (*v2) (v13);
history[history_index++] = (int)v14;
return 'A';
}
break;
case 1: 
{
unsigned char v15;
float v16;
v15='A';
v16 = (*v2) (v15);
history[history_index++] = (int)v16;
return 'A';
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

float v1 (unsigned char v17) {
history[history_index++] = (int)v17;
for (;;) {
trace++;
switch (trace) {
case 14: return 1.234;
case 12: return 1.234;
case 10: 
{
signed short v18;
float v19;
signed int v20;
v18=-111;
v19=1.234;
v20=-199999;
v9 (v18, v19, v20);
return 1.234;
}
break;
case 8: return 1.234;
case 6: 
{
double v21;
signed short v22;
unsigned char v23;
v21=111111.2222222;
v22=-111;
v23 = v3 (v21, v22);
history[history_index++] = (int)v23;
return 1.234;
}
break;
case 4: 
{
signed char v24;
signed short v25;
v24='a';
v25=-111;
(*v6) (v24, v25);
return 1.234;
}
break;
case 2: 
{
signed char v26;
signed short v27;
v26='a';
v27=-111;
(*v6) (v26, v27);
return 1.234;
}
break;
case 0: 
{
double v28;
signed short v29;
unsigned char v30;
v28=111111.2222222;
v29=-111;
v30 = v3 (v28, v29);
history[history_index++] = (int)v30;
return 1.234;
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
unsigned char v31;
float v32;
v31='A';
v32 = (*v2) (v31);
history[history_index++] = (int)v32;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
