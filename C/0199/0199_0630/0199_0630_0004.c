#include <stdlib.h>
extern unsigned char v1 (signed short, signed short);
extern unsigned char (*v2) (signed short, signed short);
signed short v3 (unsigned short, signed char);
signed short (*v4) (unsigned short, signed char) = v3;
extern unsigned int v5 (unsigned short, signed char, unsigned char, signed char);
extern unsigned int (*v6) (unsigned short, signed char, unsigned char, signed char);
extern unsigned int v7 (unsigned short, unsigned int, unsigned short);
extern unsigned int (*v8) (unsigned short, unsigned int, unsigned short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern unsigned int v11 (signed int, signed char);
extern unsigned int (*v12) (signed int, signed char);
extern unsigned short v13 (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned short (*v14) (unsigned int, signed char, unsigned char, unsigned int);
signed int v15 (signed short);
signed int (*v16) (signed short) = v15;
extern signed int v17 (signed short, signed char, unsigned int);
extern signed int (*v18) (signed short, signed char, unsigned int);
unsigned char v19 (signed int, unsigned int, unsigned char);
unsigned char (*v20) (signed int, unsigned int, unsigned char) = v19;
extern signed char v23 (void);
extern signed char (*v24) (void);
unsigned int v27 (unsigned short, unsigned short, unsigned short, unsigned int);
unsigned int (*v28) (unsigned short, unsigned short, unsigned short, unsigned int) = v27;
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v119 = 4U;
unsigned char v118 = 1;
unsigned int v117 = 7U;

unsigned int v27 (unsigned short v120, unsigned short v121, unsigned short v122, unsigned int v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed short v126 = -1;
unsigned char v125 = 7;
signed short v124 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed int v127, unsigned int v128, unsigned char v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed short v132 = -1;
signed char v131 = -1;
signed int v130 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed short v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
signed int v136 = 1;
unsigned int v135 = 1U;
signed int v134 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v137, signed char v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = -1;
signed short v140 = -3;
unsigned char v139 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
