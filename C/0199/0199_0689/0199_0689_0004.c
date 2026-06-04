#include <stdlib.h>
extern unsigned short v3 (unsigned char, unsigned char, unsigned char);
extern unsigned short (*v4) (unsigned char, unsigned char, unsigned char);
extern unsigned int v5 (unsigned short, signed char);
extern unsigned int (*v6) (unsigned short, signed char);
extern signed int v7 (signed char, signed short);
extern signed int (*v8) (signed char, signed short);
unsigned int v9 (unsigned char, unsigned char);
unsigned int (*v10) (unsigned char, unsigned char) = v9;
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern unsigned char v13 (signed int, unsigned int);
extern unsigned char (*v14) (signed int, unsigned int);
extern signed int v15 (signed short, signed int);
extern signed int (*v16) (signed short, signed int);
signed short v19 (signed int);
signed short (*v20) (signed int) = v19;
extern unsigned char v21 (signed char, unsigned short, signed int, signed char);
extern unsigned char (*v22) (signed char, unsigned short, signed int, signed char);
extern signed char v23 (unsigned int);
extern signed char (*v24) (unsigned int);
extern void v25 (unsigned char, signed int);
extern void (*v26) (unsigned char, signed int);
unsigned short v27 (unsigned char, signed int, unsigned char, signed short);
unsigned short (*v28) (unsigned char, signed int, unsigned char, signed short) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v122 = 1U;
signed short v121 = 2;
signed char v120 = 1;

unsigned short v27 (unsigned char v123, signed int v124, unsigned char v125, signed short v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed short v129 = 1;
unsigned char v128 = 4;
signed char v127 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed int v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
signed short v133 = -4;
signed short v132 = 2;
signed int v131 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned char v134, unsigned char v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned char v138 = 5;
unsigned int v137 = 4U;
unsigned int v136 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
