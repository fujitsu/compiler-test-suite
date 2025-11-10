#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern double v3 (float);
extern double (*v4) (float);
unsigned char v5 (signed char, unsigned short);
unsigned char (*v6) (signed char, unsigned short) = v5;
signed char v7 (unsigned char);
signed char (*v8) (unsigned char) = v7;
signed short v9 (unsigned short, unsigned int);
signed short (*v10) (unsigned short, unsigned int) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed short v9 (unsigned short v16, unsigned int v17) {
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
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

signed char v7 (unsigned char v18) {
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

unsigned char v5 (signed char v19, unsigned short v20) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
for (;;) {
trace++;
switch (trace) {
case 1: return 'A';
default: abort ();
}
}
}
