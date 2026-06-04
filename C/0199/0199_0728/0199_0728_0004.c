#include <stdlib.h>
extern signed int v1 (unsigned short);
extern signed int (*v2) (unsigned short);
extern signed short v3 (signed short, unsigned char);
extern signed short (*v4) (signed short, unsigned char);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern unsigned char v7 (signed char, signed char, unsigned char);
extern unsigned char (*v8) (signed char, signed char, unsigned char);
unsigned char v9 (unsigned char, signed short);
unsigned char (*v10) (unsigned char, signed short) = v9;
signed char v11 (void);
signed char (*v12) (void) = v11;
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
extern unsigned int v15 (unsigned char);
extern unsigned int (*v16) (unsigned char);
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern signed char v23 (unsigned short, signed short);
extern signed char (*v24) (unsigned short, signed short);
extern signed int v25 (signed int, signed char);
extern signed int (*v26) (signed int, signed char);
extern unsigned int v27 (unsigned char, signed char, signed short, signed char);
extern unsigned int (*v28) (unsigned char, signed char, signed short, signed char);
extern unsigned int v29 (signed int, signed char);
extern unsigned int (*v30) (signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v120 = -4;
signed char v119 = 2;
signed char v118 = 2;

unsigned short v21 (void)
{
{
for (;;) {
signed int v123 = -2;
unsigned int v122 = 4U;
unsigned short v121 = 5;
trace++;
switch (trace)
{
case 1: 
{
signed int v124;
signed char v125;
unsigned int v126;
v124 = 0 - 3;
v125 = -2 + 2;
v126 = v29 (v124, v125);
history[history_index++] = (int)v126;
}
break;
case 3: 
return 2;
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
unsigned short v129 = 0;
signed short v128 = 2;
signed int v127 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
unsigned int v132 = 2U;
signed short v131 = 1;
signed char v130 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned char v133, signed short v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned short v137 = 2;
unsigned short v136 = 5;
unsigned int v135 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
