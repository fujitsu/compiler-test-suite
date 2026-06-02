#include <stdlib.h>
extern signed short v1 (unsigned char, signed char, signed int, signed short);
extern signed short (*v2) (unsigned char, signed char, signed int, signed short);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
unsigned int v5 (signed int, unsigned char);
unsigned int (*v6) (signed int, unsigned char) = v5;
unsigned char v7 (signed short, signed int);
unsigned char (*v8) (signed short, signed int) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (signed short, signed short, signed short);
extern signed short (*v12) (signed short, signed short, signed short);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
unsigned int v15 (unsigned short, signed short, signed short);
unsigned int (*v16) (unsigned short, signed short, signed short) = v15;
extern void v17 (signed int, unsigned char);
extern void (*v18) (signed int, unsigned char);
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
unsigned short v25 (signed short, unsigned int, unsigned char);
unsigned short (*v26) (signed short, unsigned int, unsigned char) = v25;
extern signed short v27 (signed char, unsigned int, unsigned int, unsigned short);
extern signed short (*v28) (signed char, unsigned int, unsigned int, unsigned short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v115 = 5;
unsigned short v114 = 5;
signed short v113 = 2;

unsigned short v25 (signed short v116, unsigned int v117, unsigned char v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = -2;
unsigned int v120 = 5U;
signed short v119 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned short v122, signed short v123, signed short v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed char v127 = -3;
unsigned int v126 = 0U;
unsigned int v125 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed short v128, signed int v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 1U;
unsigned short v131 = 0;
unsigned int v130 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed int v133, unsigned char v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = -4;
unsigned char v136 = 3;
unsigned char v135 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
