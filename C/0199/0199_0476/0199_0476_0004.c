#include <stdlib.h>
unsigned char v1 (unsigned int, signed char, signed int, signed char);
unsigned char (*v2) (unsigned int, signed char, signed int, signed char) = v1;
static void v3 (unsigned int, unsigned char, unsigned char, signed char);
static void (*v4) (unsigned int, unsigned char, unsigned char, signed char) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
void v9 (unsigned short);
void (*v10) (unsigned short) = v9;
extern unsigned short v11 (signed char);
extern unsigned short (*v12) (signed char);
extern unsigned int v13 (unsigned char, unsigned short, signed char, unsigned int);
extern unsigned int (*v14) (unsigned char, unsigned short, signed char, unsigned int);
extern signed char v15 (signed int);
extern signed char (*v16) (signed int);
unsigned char v17 (signed short);
unsigned char (*v18) (signed short) = v17;
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
extern signed int v21 (signed char);
extern signed int (*v22) (signed char);
extern unsigned char v23 (signed int, signed char, signed char);
extern unsigned char (*v24) (signed int, signed char, signed char);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned int v27 (signed short, unsigned char, unsigned char, signed int);
extern unsigned int (*v28) (signed short, unsigned char, unsigned char, signed int);
signed int v29 (signed char);
signed int (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v109 = 3;
unsigned int v108 = 0U;
signed int v107 = 0;

signed int v29 (signed char v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
unsigned char v113 = 4;
signed int v112 = -3;
unsigned int v111 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed short v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 4;
unsigned short v116 = 2;
signed short v115 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned short v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
unsigned short v121 = 6;
signed char v120 = 3;
signed char v119 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v3 (unsigned int v122, unsigned char v123, unsigned char v124, signed char v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed char v128 = 3;
unsigned char v127 = 7;
signed int v126 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v129;
unsigned short v130;
signed char v131;
unsigned int v132;
unsigned int v133;
v129 = 4 - v123;
v130 = 0 - 0;
v131 = v125 - 0;
v132 = 6U + v122;
v133 = v13 (v129, v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v134, signed char v135, signed int v136, signed char v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned char v140 = 4;
signed short v139 = 2;
signed int v138 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v141;
unsigned char v142;
unsigned char v143;
signed char v144;
v141 = v134 - 4U;
v142 = v140 + v140;
v143 = v140 + 0;
v144 = v135 - 3;
v3 (v141, v142, v143, v144);
}
break;
case 12: 
return v140;
default: abort ();
}
}
}
}
