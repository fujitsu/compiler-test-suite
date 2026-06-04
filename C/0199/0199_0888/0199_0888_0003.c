#include <stdlib.h>
extern signed short v3 (signed short, unsigned short, signed int, signed short);
extern signed short (*v4) (signed short, unsigned short, signed int, signed short);
unsigned short v5 (unsigned short, signed short, unsigned int);
unsigned short (*v6) (unsigned short, signed short, unsigned int) = v5;
unsigned short v7 (unsigned int, unsigned short);
unsigned short (*v8) (unsigned int, unsigned short) = v7;
extern signed char v9 (signed short, signed char, signed char);
extern signed char (*v10) (signed short, signed char, signed char);
signed short v11 (unsigned short, unsigned int, unsigned short);
signed short (*v12) (unsigned short, unsigned int, unsigned short) = v11;
extern signed int v13 (unsigned short, unsigned int, unsigned int);
extern signed int (*v14) (unsigned short, unsigned int, unsigned int);
signed char v15 (void);
signed char (*v16) (void) = v15;
extern unsigned char v17 (signed short, signed short);
extern unsigned char (*v18) (signed short, signed short);
extern unsigned short v19 (signed char);
extern unsigned short (*v20) (signed char);
extern signed char v21 (signed short, unsigned char, unsigned short, unsigned short);
extern signed char (*v22) (signed short, unsigned char, unsigned short, unsigned short);
extern signed short v23 (signed int, signed int, unsigned short, unsigned char);
extern signed short (*v24) (signed int, signed int, unsigned short, unsigned char);
extern unsigned short v25 (signed char, unsigned char);
extern unsigned short (*v26) (signed char, unsigned char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned int v29 (unsigned char, unsigned int, signed int, signed short);
extern unsigned int (*v30) (unsigned char, unsigned int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v118 = 7;
unsigned char v117 = 0;
unsigned short v116 = 5;

signed char v15 (void)
{
{
for (;;) {
signed char v121 = 3;
signed int v120 = -1;
unsigned short v119 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned short v122, unsigned int v123, unsigned short v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 0;
unsigned int v126 = 6U;
unsigned char v125 = 7;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v128;
v128 = v27 ();
history[history_index++] = (int)v128;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

unsigned short v7 (unsigned int v129, unsigned short v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned int v133 = 2U;
signed int v132 = -2;
signed short v131 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned short v134, signed short v135, unsigned int v136)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned char v139 = 5;
unsigned int v138 = 1U;
signed char v137 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
