#include <stdio.h>
#include <stdlib.h>
signed char v1 (signed int);
signed char (*v2) (signed int) = v1;
double v3 (signed char, float, float);
double (*v4) (signed char, float, float) = v3;
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed int v9 (float, unsigned int, signed char, float);
extern signed int (*v10) (float, unsigned int, signed char, float);
extern int history[];
extern int history_index;
extern int trace;

unsigned char v5 (void) {
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

double v3 (signed char v11, float v12, float v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
for (;;) {
trace++;
switch (trace) {
case 1: return 111111.2222222;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed char v1 (signed int v14) {
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 2: return 'a';
case 0: 
{
signed char v15;
float v16;
float v17;
double v18;
v15='a';
v16=1.234;
v17=1.234;
v18 = v3 (v15, v16, v17);
history[history_index++] = (int)v18;
return 'a';
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
signed int v19;
signed char v20;
v19=-199999;
v20 = (*v2) (v19);
history[history_index++] = (int)v20;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
