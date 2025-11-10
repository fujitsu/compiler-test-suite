#include <stdio.h>
#include <stdlib.h>
extern double v1 (signed short, double);
extern double (*v2) (signed short, double);
signed char v3 (void);
signed char (*v4) (void) = v3;
extern signed char v5 (double, double, unsigned char, signed short);
extern signed char (*v6) (double, double, unsigned char, signed short);
signed int v7 (unsigned int, float, signed int, signed short);
signed int (*v8) (unsigned int, float, signed int, signed short) = v7;
double v9 (void);
double (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;

double v9 (void) {
for (;;) {
trace++;
switch (trace) {
case 9: return 111111.2222222;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed int v7 (unsigned int v11, float v12, signed int v13, signed short v14) {
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

signed char v3 (void) {
for (;;) {
trace++;
switch (trace) {
case 13: return 'a';
case 7: 
{
signed short v15;
double v16;
double v17;
v15=-111;
v16=111111.2222222;
v17 = (*v2) (v15, v16);
history[history_index++] = (int)v17;
return 'a';
}
break;
case 5: 
{
signed short v18;
double v19;
double v20;
v18=-111;
v19=111111.2222222;
v20 = (*v2) (v18, v19);
history[history_index++] = (int)v20;
return 'a';
}
break;
case 1: return 'a';
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
signed short v21;
double v22;
double v23;
v21=-111;
v22=111111.2222222;
v23 = (*v2) (v21, v22);
history[history_index++] = (int)v23;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
