#include <stdlib.h>
extern signed short v1 (unsigned int);
extern signed short (*v2) (unsigned int);
extern signed short v3 (double);
extern signed short (*v4) (double);
double v5 (signed char, double, signed short, unsigned short);
double (*v6) (signed char, double, signed short, unsigned short) = v5;
float v7 (void);
float (*v8) (void) = v7;
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned char v9 (void) {
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

float v7 (void) {
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

double v5 (signed char v14, double v15, signed short v16, unsigned short v17) {
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
