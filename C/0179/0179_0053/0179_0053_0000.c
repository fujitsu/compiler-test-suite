#include <stdio.h>
#include <stdlib.h>
unsigned short v1 (float, unsigned short, signed char);
unsigned short (*v2) (float, unsigned short, signed char) = v1;
unsigned short v3 (signed int, float, signed char);
unsigned short (*v4) (signed int, float, signed char) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
extern double v7 (double);
extern double (*v8) (double);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v3 (signed int v11, float v12, signed char v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
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

unsigned short v1 (float v14, unsigned short v15, signed char v16) {
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
for (;;) {
trace++;
switch (trace) {
case 4: return 111;
case 2: 
{
double v17;
double v18;
v17=111111.2222222;
v18 = v7 (v17);
history[history_index++] = (int)v18;
return 111;
}
break;
case 0: 
{
double v19;
double v20;
v19=111111.2222222;
v20 = (*v8) (v19);
history[history_index++] = (int)v20;
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
float v21;
unsigned short v22;
signed char v23;
unsigned short v24;
v21=1.234;
v22=111;
v23='a';
v24 = (*v2) (v21, v22, v23);
history[history_index++] = (int)v24;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
