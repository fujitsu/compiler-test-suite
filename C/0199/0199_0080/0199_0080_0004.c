#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed char v3 (unsigned char, signed int, signed char);
extern signed char (*v4) (unsigned char, signed int, signed char);
extern void v5 (void);
extern void (*v6) (void);
extern signed char v7 (void);
extern signed char (*v8) (void);
signed short v9 (signed char, signed short, unsigned char);
signed short (*v10) (signed char, signed short, unsigned char) = v9;
extern unsigned short v11 (unsigned int, unsigned char, signed char);
extern unsigned short (*v12) (unsigned int, unsigned char, signed char);
unsigned short v13 (signed int, signed short);
unsigned short (*v14) (signed int, signed short) = v13;
unsigned char v15 (signed short, unsigned int, signed int, unsigned short);
unsigned char (*v16) (signed short, unsigned int, signed int, unsigned short) = v15;
void v17 (signed int);
void (*v18) (signed int) = v17;
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned char v23 (unsigned int, unsigned char, signed char, unsigned char);
extern unsigned char (*v24) (unsigned int, unsigned char, signed char, unsigned char);
extern signed char v25 (unsigned int, unsigned short, unsigned short, signed int);
extern signed char (*v26) (unsigned int, unsigned short, unsigned short, signed int);
extern signed int v27 (signed short, unsigned short);
extern signed int (*v28) (signed short, unsigned short);
extern unsigned short v29 (signed int, unsigned short, unsigned char, signed int);
extern unsigned short (*v30) (signed int, unsigned short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v121 = 5;
signed char v120 = -1;
unsigned int v119 = 0U;

void v17 (signed int v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
signed short v125 = -1;
unsigned int v124 = 5U;
unsigned int v123 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed short v126, unsigned int v127, signed int v128, unsigned short v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 7U;
signed short v131 = -1;
signed short v130 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed int v133, signed short v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned short v137 = 4;
unsigned short v136 = 2;
unsigned short v135 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed char v138, signed short v139, unsigned char v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed char v143 = -1;
unsigned char v142 = 1;
unsigned int v141 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
