#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
float v5 (unsigned short, unsigned short, signed short, unsigned char);
float (*v6) (unsigned short, unsigned short, signed short, unsigned char) = v5;
extern unsigned char v7 (double, float, signed short);
extern unsigned char (*v8) (double, float, signed short);
signed int v9 (signed short, signed short, unsigned short);
signed int (*v10) (signed short, signed short, unsigned short) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed int v9 (signed short v11, signed short v12, unsigned short v13) {
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

float v5 (unsigned short v14, unsigned short v15, signed short v16, unsigned char v17) {
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
for (;;) {
trace++;
switch (trace) {
case 13: return 1.234;
case 10: return 1.234;
case 8: return 1.234;
case 6: 
{
double v18;
float v19;
signed short v20;
unsigned char v21;
v18=111111.2222222;
v19=1.234;
v20=-111;
v21 = (*v8) (v18, v19, v20);
history[history_index++] = (int)v21;
return 1.234;
}
break;
case 3: 
{
unsigned char v22;
v22 = (*v4) ();
history[history_index++] = (int)v22;
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
signed int v23;
v23 = v1 ();
history[history_index++] = (int)v23;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
