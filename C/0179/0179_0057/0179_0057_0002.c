#include <stdlib.h>
signed int v1 (unsigned short, signed char);
signed int (*v2) (unsigned short, signed char) = v1;
extern void v3 (float, unsigned char);
extern void (*v4) (float, unsigned char);
extern unsigned short v5 (float);
extern unsigned short (*v6) (float);
extern void v7 (void);
extern void (*v8) (void);
signed char v9 (unsigned short, signed short, signed int);
signed char (*v10) (unsigned short, signed short, signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed char v9 (unsigned short v17, signed short v18, signed int v19) {
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

signed int v1 (unsigned short v20, signed char v21) {
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
for (;;) {
trace++;
switch (trace) {
case 0: return -199999;
default: abort ();
}
}
}
