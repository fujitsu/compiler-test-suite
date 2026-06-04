#include <stdlib.h>
extern signed short v1 (signed int, unsigned char);
extern signed short (*v2) (signed int, unsigned char);
extern signed short v3 (unsigned char, unsigned short);
extern signed short (*v4) (unsigned char, unsigned short);
extern void v5 (unsigned int, signed short);
extern void (*v6) (unsigned int, signed short);
signed short v7 (signed int, unsigned short, signed char, unsigned short);
signed short (*v8) (signed int, unsigned short, signed char, unsigned short) = v7;
unsigned short v9 (signed int, unsigned int);
unsigned short (*v10) (signed int, unsigned int) = v9;
unsigned short v11 (unsigned short, unsigned char);
unsigned short (*v12) (unsigned short, unsigned char) = v11;
extern unsigned char v13 (signed int, unsigned int);
extern unsigned char (*v14) (signed int, unsigned int);
extern unsigned short v15 (signed short, unsigned short);
extern unsigned short (*v16) (signed short, unsigned short);
extern signed char v17 (signed char, unsigned int, unsigned char, signed int);
extern signed char (*v18) (signed char, unsigned int, unsigned char, signed int);
extern unsigned int v19 (unsigned int, unsigned char);
extern unsigned int (*v20) (unsigned int, unsigned char);
extern unsigned int v21 (unsigned short, signed char);
extern unsigned int (*v22) (unsigned short, signed char);
unsigned short v23 (unsigned short, unsigned char, unsigned int);
unsigned short (*v24) (unsigned short, unsigned char, unsigned int) = v23;
extern unsigned short v25 (unsigned short, unsigned short, signed short, signed char);
extern unsigned short (*v26) (unsigned short, unsigned short, signed short, signed char);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v79 = 0;
signed short v78 = -3;
unsigned short v77 = 6;

unsigned short v23 (unsigned short v80, unsigned char v81, unsigned int v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 7;
signed char v84 = 1;
unsigned int v83 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned short v86, unsigned char v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = 2;
unsigned short v89 = 3;
signed char v88 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed int v91, unsigned int v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = -4;
signed int v94 = -4;
signed char v93 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed int v96, unsigned short v97, signed char v98, unsigned short v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 7;
signed short v101 = -4;
unsigned short v100 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
