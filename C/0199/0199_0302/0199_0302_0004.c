#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern unsigned int v5 (unsigned short, signed int, signed short);
extern unsigned int (*v6) (unsigned short, signed int, signed short);
unsigned int v7 (unsigned char, signed int, signed char);
unsigned int (*v8) (unsigned char, signed int, signed char) = v7;
extern void v9 (signed int, signed char, signed char, unsigned char);
extern void (*v10) (signed int, signed char, signed char, unsigned char);
extern unsigned char v11 (signed char, signed int, unsigned int);
extern unsigned char (*v12) (signed char, signed int, unsigned int);
void v13 (signed char);
void (*v14) (signed char) = v13;
extern signed short v15 (signed short, signed short, signed int);
extern signed short (*v16) (signed short, signed short, signed int);
extern signed int v17 (unsigned int);
extern signed int (*v18) (unsigned int);
extern unsigned short v19 (unsigned char, unsigned char);
extern unsigned short (*v20) (unsigned char, unsigned char);
extern signed char v21 (unsigned short, signed char);
extern signed char (*v22) (unsigned short, signed char);
unsigned char v23 (unsigned short);
unsigned char (*v24) (unsigned short) = v23;
void v25 (void);
void (*v26) (void) = v25;
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
extern unsigned int v29 (signed char, unsigned char);
extern unsigned int (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v107 = 1;
signed short v106 = -2;
unsigned int v105 = 4U;

void v25 (void)
{
{
for (;;) {
unsigned char v110 = 0;
signed int v109 = 0;
signed short v108 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned short v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
unsigned char v114 = 2;
signed int v113 = -3;
unsigned char v112 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed char v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 6U;
unsigned short v117 = 3;
unsigned short v116 = 5;
trace++;
switch (trace)
{
case 1: 
{
signed char v119;
unsigned char v120;
unsigned int v121;
v119 = v115 + v115;
v120 = 1 + 6;
v121 = v29 (v119, v120);
history[history_index++] = (int)v121;
}
break;
case 3: 
{
unsigned short v122;
signed char v123;
signed char v124;
v122 = v116 + v117;
v123 = -1 - v115;
v124 = v21 (v122, v123);
history[history_index++] = (int)v124;
}
break;
case 5: 
{
signed char v125;
unsigned char v126;
unsigned int v127;
v125 = -2 + v115;
v126 = 2 + 6;
v127 = v29 (v125, v126);
history[history_index++] = (int)v127;
}
break;
case 7: 
return;
case 10: 
{
signed char v128;
unsigned char v129;
unsigned int v130;
v128 = v115 - 1;
v129 = 7 + 7;
v130 = v29 (v128, v129);
history[history_index++] = (int)v130;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v131, signed int v132, signed char v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned int v136 = 2U;
unsigned char v135 = 0;
unsigned short v134 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
