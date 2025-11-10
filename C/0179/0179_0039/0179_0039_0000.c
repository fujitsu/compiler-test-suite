#include <stdio.h>
#include <stdlib.h>
double v1 (unsigned char);
double (*v2) (unsigned char) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned int v5 (unsigned char, unsigned short);
extern unsigned int (*v6) (unsigned char, unsigned short);
signed short v7 (double, double, signed short);
signed short (*v8) (double, double, signed short) = v7;
extern signed int v9 (float, signed int, float);
extern signed int (*v10) (float, signed int, float);
extern int history[];
extern int history_index;
extern int trace;

signed short v7 (double v11, double v12, signed short v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
for (;;) {
trace++;
switch (trace) {
case 13: return -111;
case 11: return -111;
case 9: 
{
signed short v14;
v14 = (*v4) ();
history[history_index++] = (int)v14;
return -111;
}
break;
case 4: return -111;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

double v1 (unsigned char v15) {
history[history_index++] = (int)v15;
for (;;) {
trace++;
switch (trace) {
case 18: return 111111.2222222;
case 2: 
{
unsigned char v16;
unsigned short v17;
unsigned int v18;
v16='A';
v17=111;
v18 = v5 (v16, v17);
history[history_index++] = (int)v18;
return 111111.2222222;
}
break;
case 0: 
{
unsigned char v19;
unsigned short v20;
unsigned int v21;
v19='A';
v20=111;
v21 = (*v6) (v19, v20);
history[history_index++] = (int)v21;
return 111111.2222222;
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
unsigned char v22;
double v23;
v22='A';
v23 = (*v2) (v22);
history[history_index++] = (int)v23;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
