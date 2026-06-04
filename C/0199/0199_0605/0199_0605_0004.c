#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned short (*v2) (unsigned short, unsigned short, unsigned char, signed int);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
extern unsigned int v5 (signed int, signed int, unsigned char, signed char);
extern unsigned int (*v6) (signed int, signed int, unsigned char, signed char);
signed int v7 (signed char, signed int);
signed int (*v8) (signed char, signed int) = v7;
unsigned short v9 (signed int, signed int);
unsigned short (*v10) (signed int, signed int) = v9;
extern signed char v11 (unsigned char, signed char, signed int);
extern signed char (*v12) (unsigned char, signed char, signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
unsigned char v15 (signed int, unsigned char, unsigned int, unsigned int);
unsigned char (*v16) (signed int, unsigned char, unsigned int, unsigned int) = v15;
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
extern unsigned int v21 (signed char, signed char);
extern unsigned int (*v22) (signed char, signed char);
void v23 (void);
void (*v24) (void) = v23;
extern unsigned short v25 (unsigned int, signed short);
extern unsigned short (*v26) (unsigned int, signed short);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (unsigned int, unsigned short, signed char, unsigned int);
extern unsigned char (*v30) (unsigned int, unsigned short, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v111 = 3;
unsigned char v110 = 0;
unsigned int v109 = 1U;

void v23 (void)
{
{
for (;;) {
signed char v114 = -2;
signed char v113 = 3;
unsigned short v112 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
signed short v117 = 0;
unsigned short v116 = 3;
signed char v115 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v118, unsigned char v119, unsigned int v120, unsigned int v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned short v124 = 3;
signed char v123 = 1;
unsigned int v122 = 5U;
trace++;
switch (trace)
{
case 3: 
{
signed char v125;
signed char v126;
unsigned int v127;
v125 = -2 + -3;
v126 = v123 + 3;
v127 = v21 (v125, v126);
history[history_index++] = (int)v127;
}
break;
case 5: 
{
signed char v128;
signed char v129;
unsigned int v130;
v128 = v123 + 1;
v129 = v123 - 1;
v130 = v21 (v128, v129);
history[history_index++] = (int)v130;
}
break;
case 7: 
{
signed char v131;
signed char v132;
unsigned int v133;
v131 = v123 + v123;
v132 = v123 - v123;
v133 = v21 (v131, v132);
history[history_index++] = (int)v133;
}
break;
case 9: 
{
signed char v134;
signed char v135;
unsigned int v136;
v134 = -3 - -3;
v135 = 2 + 3;
v136 = v21 (v134, v135);
history[history_index++] = (int)v136;
}
break;
case 11: 
return v119;
default: abort ();
}
}
}
}

unsigned short v9 (signed int v137, signed int v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned int v141 = 6U;
unsigned short v140 = 1;
signed short v139 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed char v142, signed int v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned short v146 = 4;
signed int v145 = -1;
signed short v144 = 2;
trace++;
switch (trace)
{
case 1: 
return v143;
default: abort ();
}
}
}
}
