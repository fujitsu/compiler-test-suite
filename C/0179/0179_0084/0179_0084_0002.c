#include <stdlib.h>
extern signed int v1 (float, signed int, double);
extern signed int (*v2) (float, signed int, double);
extern signed short v3 (unsigned short, signed short);
extern signed short (*v4) (unsigned short, signed short);
extern signed char v5 (signed char, double);
extern signed char (*v6) (signed char, double);
signed int v7 (unsigned char, double, unsigned short);
signed int (*v8) (unsigned char, double, unsigned short) = v7;
signed int v9 (unsigned char, unsigned char);
signed int (*v10) (unsigned char, unsigned char) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed int v9 (unsigned char v40, unsigned char v41) {
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
for (;;) {
trace++;
switch (trace) {
case 5: return -199999;
case 3: 
{
signed char v42;
double v43;
signed char v44;
v42='a';
v43=111111.2222222;
v44 = (*v6) (v42, v43);
history[history_index++] = (int)v44;
return -199999;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed int v7 (unsigned char v45, double v46, unsigned short v47) {
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
for (;;) {
trace++;
switch (trace) {
case 7: return -199999;
case 1: return -199999;
default: abort ();
}
}
}
