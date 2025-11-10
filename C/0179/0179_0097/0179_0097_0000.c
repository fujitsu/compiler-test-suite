#include <stdio.h>
#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern unsigned int v3 (signed int, signed int);
extern unsigned int (*v4) (signed int, signed int);
float v5 (signed short, signed short, unsigned short, unsigned int);
float (*v6) (signed short, signed short, unsigned short, unsigned int) = v5;
signed char v7 (float);
signed char (*v8) (float) = v7;
signed int v9 (signed int, signed char, float);
signed int (*v10) (signed int, signed char, float) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed int v9 (signed int v11, signed char v12, float v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
for (;;) {
trace++;
switch (trace) {
case 6: return -199999;
case 4: return -199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed char v7 (float v14) {
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 2: return 'a';
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

float v5 (signed short v15, signed short v16, unsigned short v17, unsigned int v18) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
case 11: return 1.234;
case 9: return 1.234;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 12: return -111;
case 10: 
{
signed short v19;
signed short v20;
unsigned short v21;
unsigned int v22;
float v23;
v19=-111;
v20=-111;
v21=111;
v22=199999;
v23 = (*v6) (v19, v20, v21, v22);
history[history_index++] = (int)v23;
return -111;
}
break;
case 8: 
{
signed short v24;
signed short v25;
unsigned short v26;
unsigned int v27;
float v28;
v24=-111;
v25=-111;
v26=111;
v27=199999;
v28 = (*v6) (v24, v25, v26, v27);
history[history_index++] = (int)v28;
return -111;
}
break;
case 0: 
{
signed int v29;
signed int v30;
unsigned int v31;
v29=-199999;
v30=-199999;
v31 = (*v4) (v29, v30);
history[history_index++] = (int)v31;
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
signed short v32;
v32 = (*v2) ();
history[history_index++] = (int)v32;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
