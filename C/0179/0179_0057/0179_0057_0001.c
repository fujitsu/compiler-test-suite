#include <stdlib.h>
extern signed int v1 (unsigned short, signed char);
extern signed int (*v2) (unsigned short, signed char);
void v3 (float, unsigned char);
void (*v4) (float, unsigned char) = v3;
extern unsigned short v5 (float);
extern unsigned short (*v6) (float);
void v7 (void);
void (*v8) (void) = v7;
extern signed char v9 (unsigned short, signed short, signed int);
extern signed char (*v10) (unsigned short, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;

void v7 (void) {
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

void v3 (float v15, unsigned char v16) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
