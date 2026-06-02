#include <stdlib.h>
extern signed short v1 (signed int, unsigned short, signed char, unsigned short);
extern signed short (*v2) (signed int, unsigned short, signed char, unsigned short);
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
unsigned int v5 (unsigned char, unsigned short, unsigned char);
unsigned int (*v6) (unsigned char, unsigned short, unsigned char) = v5;
extern signed short v7 (signed short, signed char);
extern signed short (*v8) (signed short, signed char);
extern signed char v9 (signed short, unsigned short, signed int, unsigned int);
extern signed char (*v10) (signed short, unsigned short, signed int, unsigned int);
extern signed char v11 (unsigned char);
extern signed char (*v12) (unsigned char);
signed int v13 (signed char, signed short, signed char);
signed int (*v14) (signed char, signed short, signed char) = v13;
extern unsigned char v15 (unsigned int, unsigned int, signed int, signed short);
extern unsigned char (*v16) (unsigned int, unsigned int, signed int, signed short);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
signed char v25 (unsigned int, unsigned short);
signed char (*v26) (unsigned int, unsigned short) = v25;
extern unsigned int v29 (signed short);
extern unsigned int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v78 = -3;
signed int v77 = -3;
unsigned int v76 = 2U;

signed char v25 (unsigned int v79, unsigned short v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 7;
unsigned int v82 = 2U;
unsigned short v81 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed char v84, signed short v85, signed char v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed char v89 = 0;
signed short v88 = 1;
unsigned int v87 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v90, unsigned short v91, unsigned char v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = 3;
signed short v94 = 0;
unsigned int v93 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
