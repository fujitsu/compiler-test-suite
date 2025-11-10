#include <stdio.h>
#include <stdlib.h>
void v1 (unsigned short, unsigned char, float);
void (*v2) (unsigned short, unsigned char, float) = v1;
extern unsigned short v3 (unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned short, unsigned short);
extern signed char v5 (double);
extern signed char (*v6) (double);
void v7 (double, float);
void (*v8) (double, float) = v7;
unsigned int v9 (unsigned short);
unsigned int (*v10) (unsigned short) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (unsigned short v11) {
history[history_index++] = (int)v11;
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

void v7 (double v12, float v13) {
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
for (;;) {
trace++;
switch (trace) {
case 9: return;
case 5: return;
case 3: return;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

void v1 (unsigned short v14, unsigned char v15, float v16) {
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
for (;;) {
trace++;
switch (trace) {
case 14: return;
case 13: return;
case 11: return;
case 10: return;
case 8: 
{
double v17;
float v18;
v17=111111.2222222;
v18=1.234;
(*v8) (v17, v18);
return;
}
break;
case 7: 
{
unsigned short v19;
unsigned char v20;
float v21;
v19=111;
v20='A';
v21=1.234;
v1 (v19, v20, v21);
return;
}
break;
case 1: 
{
double v22;
signed char v23;
v22=111111.2222222;
v23 = v5 (v22);
history[history_index++] = (int)v23;
return;
}
break;
case 0: 
{
unsigned short v24;
unsigned char v25;
float v26;
v24=111;
v25='A';
v26=1.234;
(*v2) (v24, v25, v26);
return;
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
unsigned short v27;
unsigned char v28;
float v29;
v27=111;
v28='A';
v29=1.234;
v1 (v27, v28, v29);
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
