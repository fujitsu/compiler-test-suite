#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned short);
extern unsigned char (*v2) (signed char, unsigned short);
void v3 (float);
void (*v4) (float) = v3;
extern unsigned short v5 (unsigned short, float);
extern unsigned short (*v6) (unsigned short, float);
double v7 (float, unsigned int, double);
double (*v8) (float, unsigned int, double) = v7;
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;

double v7 (float v30, unsigned int v31, double v32) {
history[history_index++] = (int)v30;
history[history_index++] = (int)v31;
history[history_index++] = (int)v32;
for (;;) {
trace++;
switch (trace) {
case 13: return 111111.2222222;
case 3: 
{
signed char v33;
unsigned short v34;
unsigned char v35;
v33='a';
v34=111;
v35 = v1 (v33, v34);
history[history_index++] = (int)v35;
return 111111.2222222;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

void v3 (float v36) {
history[history_index++] = (int)v36;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
