#include <stdio.h>
#include <stdlib.h>
extern double v1 (void);
extern double (*v2) (void);
extern signed short v3 (void);
extern signed short (*v4) (void);
signed int v5 (void);
signed int (*v6) (void) = v5;
unsigned int v7 (unsigned short, signed int, double);
unsigned int (*v8) (unsigned short, signed int, double) = v7;
extern float v9 (signed short, signed int, signed char, double);
extern float (*v10) (signed short, signed int, signed char, double);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v7 (unsigned short v11, signed int v12, double v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
for (;;) {
trace++;
switch (trace) {
case 11: return 199999;
case 9: 
{
signed int v14;
v14 = (*v6) ();
history[history_index++] = (int)v14;
return 199999;
}
break;
case 3: 
{
signed int v15;
v15 = v5 ();
history[history_index++] = (int)v15;
return 199999;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed int v5 (void) {
for (;;) {
trace++;
switch (trace) {
case 10: return -199999;
case 8: return -199999;
case 6: 
{
signed short v16;
signed int v17;
signed char v18;
double v19;
float v20;
v16=-111;
v17=-199999;
v18='a';
v19=111111.2222222;
v20 = v9 (v16, v17, v18, v19);
history[history_index++] = (int)v20;
return -199999;
}
break;
case 4: 
{
signed short v21;
signed int v22;
signed char v23;
double v24;
float v25;
v21=-111;
v22=-199999;
v23='a';
v24=111111.2222222;
v25 = (*v10) (v21, v22, v23, v24);
history[history_index++] = (int)v25;
return -199999;
}
break;
case 1: return -199999;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
double v26;
v26 = (*v2) ();
history[history_index++] = (int)v26;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
