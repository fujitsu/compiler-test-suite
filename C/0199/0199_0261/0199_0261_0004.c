#include <stdlib.h>
extern void v3 (void);
extern void (*v4) (void);
signed short v5 (unsigned short);
signed short (*v6) (unsigned short) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed char v9 (unsigned int, unsigned short, signed int);
extern signed char (*v10) (unsigned int, unsigned short, signed int);
unsigned int v11 (signed int, signed int, signed short, unsigned short);
unsigned int (*v12) (signed int, signed int, signed short, unsigned short) = v11;
extern unsigned char v13 (signed int, unsigned char, signed short);
extern unsigned char (*v14) (signed int, unsigned char, signed short);
signed short v17 (signed char, signed char, unsigned short);
signed short (*v18) (signed char, signed char, unsigned short) = v17;
extern void v19 (void);
extern void (*v20) (void);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
extern unsigned int v23 (unsigned char, unsigned short);
extern unsigned int (*v24) (unsigned char, unsigned short);
void v25 (signed short, signed short, signed int, signed int);
void (*v26) (signed short, signed short, signed int, signed int) = v25;
extern unsigned char v27 (unsigned int, unsigned short, unsigned int);
extern unsigned char (*v28) (unsigned int, unsigned short, unsigned int);
extern signed char v29 (unsigned char, unsigned char, unsigned char, unsigned char);
extern signed char (*v30) (unsigned char, unsigned char, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v115 = -3;
unsigned char v114 = 7;
unsigned short v113 = 0;

void v25 (signed short v116, signed short v117, signed int v118, signed int v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 7;
signed short v121 = -1;
unsigned int v120 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (void)
{
{
for (;;) {
unsigned short v125 = 5;
signed short v124 = -2;
signed char v123 = -3;
trace++;
switch (trace)
{
case 11: 
return 7;
default: abort ();
}
}
}
}

signed short v17 (signed char v126, signed char v127, unsigned short v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 4;
unsigned short v130 = 2;
unsigned char v129 = 6;
trace++;
switch (trace)
{
case 1: 
return -1;
default: abort ();
}
}
}
}

unsigned int v11 (signed int v132, signed int v133, signed short v134, unsigned short v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 7;
signed char v137 = -3;
unsigned short v136 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned short v139)
{
history[history_index++] = (int)v139;
{
for (;;) {
signed char v142 = 1;
signed char v141 = 0;
unsigned short v140 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
