#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned short);
extern unsigned short (*v2) (signed short, unsigned short);
double v3 (void);
double (*v4) (void) = v3;
unsigned short v5 (float, unsigned int);
unsigned short (*v6) (float, unsigned int) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
signed short v9 (signed short, signed char);
signed short (*v10) (signed short, signed char) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed short v9 (signed short v17, signed char v18) {
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

unsigned short v5 (float v19, unsigned int v20) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
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

double v3 (void) {
for (;;) {
trace++;
switch (trace) {
case 1: return 111111.2222222;
default: abort ();
}
}
}
