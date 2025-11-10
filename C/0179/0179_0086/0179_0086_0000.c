#include <stdio.h>
#include <stdlib.h>
extern double v1 (signed char, signed char, unsigned short);
extern double (*v2) (signed char, signed char, unsigned short);
signed int v3 (unsigned short);
signed int (*v4) (unsigned short) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
void v7 (unsigned int, double, signed int, unsigned short);
void (*v8) (unsigned int, double, signed int, unsigned short) = v7;
unsigned int v9 (unsigned char, signed int, signed int, signed int);
unsigned int (*v10) (unsigned char, signed int, signed int, signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (unsigned char v11, signed int v12, signed int v13, signed int v14) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 11: return 199999;
case 9: return 199999;
case 7: return 199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

void v7 (unsigned int v15, double v16, signed int v17, unsigned short v18) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
case 3: return;
case 1: 
{
signed char v19;
signed char v20;
unsigned short v21;
double v22;
v19='a';
v20='a';
v21=111;
v22 = (*v2) (v19, v20, v21);
history[history_index++] = (int)v22;
return;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed int v3 (unsigned short v23) {
history[history_index++] = (int)v23;
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
signed char v24;
signed char v25;
unsigned short v26;
double v27;
v24='a';
v25='a';
v26=111;
v27 = (*v2) (v24, v25, v26);
history[history_index++] = (int)v27;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
