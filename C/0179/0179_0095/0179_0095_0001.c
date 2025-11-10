#include <stdlib.h>
signed int v1 (signed int, signed char);
signed int (*v2) (signed int, signed char) = v1;
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
unsigned char v5 (signed short);
unsigned char (*v6) (signed short) = v5;
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
extern int history[];
extern int history_index;
extern int trace;

unsigned char v7 (void) {
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

unsigned char v5 (signed short v16) {
history[history_index++] = (int)v16;
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

signed int v1 (signed int v17, signed char v18) {
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
case 0: return -199999;
default: abort ();
}
}
}
