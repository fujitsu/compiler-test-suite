#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
unsigned short v3 (unsigned short);
unsigned short (*v4) (unsigned short) = v3;
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern unsigned short v7 (unsigned char, unsigned char);
extern unsigned short (*v8) (unsigned char, unsigned char);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
unsigned char v11 (signed char, signed char, signed int, unsigned short);
unsigned char (*v12) (signed char, signed char, signed int, unsigned short) = v11;
extern unsigned short v13 (signed int);
extern unsigned short (*v14) (signed int);
extern void v17 (signed int, signed int);
extern void (*v18) (signed int, signed int);
extern signed int v19 (signed char, signed int, signed short, unsigned int);
extern signed int (*v20) (signed char, signed int, signed short, unsigned int);
extern signed char v21 (unsigned int, unsigned int, signed char, signed short);
extern signed char (*v22) (unsigned int, unsigned int, signed char, signed short);
extern signed short v23 (void);
extern signed short (*v24) (void);
unsigned char v25 (unsigned int, signed int, signed short, unsigned int);
unsigned char (*v26) (unsigned int, signed int, signed short, unsigned int) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
unsigned char v29 (unsigned char, signed short, unsigned int, signed short);
unsigned char (*v30) (unsigned char, signed short, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v113 = 3;
signed int v112 = -4;
signed char v111 = -1;

unsigned char v29 (unsigned char v114, signed short v115, unsigned int v116, signed short v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 0;
unsigned int v119 = 0U;
signed int v118 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (unsigned int v121, signed int v122, signed short v123, unsigned int v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = -2;
signed int v126 = -3;
unsigned short v125 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed char v128, signed char v129, signed int v130, unsigned short v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed int v134 = -3;
signed char v133 = -4;
unsigned int v132 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned short v135)
{
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 7;
unsigned short v137 = 2;
unsigned char v136 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
