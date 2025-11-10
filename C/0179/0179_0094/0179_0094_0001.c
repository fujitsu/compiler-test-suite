#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
double v3 (unsigned char, signed char, signed char, signed short);
double (*v4) (unsigned char, signed char, signed char, signed short) = v3;
float v5 (signed int, signed short, unsigned short);
float (*v6) (signed int, signed short, unsigned short) = v5;
signed int v7 (signed int, signed char, unsigned int);
signed int (*v8) (signed int, signed char, unsigned int) = v7;
unsigned char v9 (unsigned short);
unsigned char (*v10) (unsigned short) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned char v9 (unsigned short v12) {
history[history_index++] = (int)v12;
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

signed int v7 (signed int v13, signed char v14, unsigned int v15) {
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
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

float v5 (signed int v16, signed short v17, unsigned short v18) {
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
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

double v3 (unsigned char v19, signed char v20, signed char v21, signed short v22) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
