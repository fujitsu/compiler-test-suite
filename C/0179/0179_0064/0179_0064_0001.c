#include <stdlib.h>
float v1 (signed int, float);
float (*v2) (signed int, float) = v1;
void v3 (unsigned char, unsigned int);
void (*v4) (unsigned char, unsigned int) = v3;
extern float v5 (unsigned short);
extern float (*v6) (unsigned short);
double v7 (float, unsigned char, unsigned char);
double (*v8) (float, unsigned char, unsigned char) = v7;
extern unsigned int v9 (double, signed int);
extern unsigned int (*v10) (double, signed int);
extern int history[];
extern int history_index;
extern int trace;

double v7 (float v17, unsigned char v18, unsigned char v19) {
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
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

void v3 (unsigned char v20, unsigned int v21) {
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
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

float v1 (signed int v22, float v23) {
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
for (;;) {
trace++;
switch (trace) {
case 0: return 1.234;
default: abort ();
}
}
}
