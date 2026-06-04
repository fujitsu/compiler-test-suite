#include <stdlib.h>
signed char v1 (unsigned int, signed short);
signed char (*v2) (unsigned int, signed short) = v1;
extern unsigned short v3 (unsigned short, signed short, unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned short, signed short, unsigned short, unsigned short);
extern unsigned char v5 (signed int);
extern unsigned char (*v6) (signed int);
signed int v7 (unsigned int, unsigned int);
signed int (*v8) (unsigned int, unsigned int) = v7;
extern void v9 (signed char, signed short, signed short);
extern void (*v10) (signed char, signed short, signed short);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
signed char v13 (void);
signed char (*v14) (void) = v13;
extern signed short v15 (unsigned char, signed char, unsigned short, signed short);
extern signed short (*v16) (unsigned char, signed char, unsigned short, signed short);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
extern signed short v21 (signed int);
extern signed short (*v22) (signed int);
extern unsigned short v23 (unsigned short, signed short);
extern unsigned short (*v24) (unsigned short, signed short);
extern signed int v25 (unsigned char);
extern signed int (*v26) (unsigned char);
extern void v27 (signed int, signed int, signed int, signed int);
extern void (*v28) (signed int, signed int, signed int, signed int);
unsigned int v29 (unsigned int);
unsigned int (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v114 = -2;
signed short v113 = -1;
unsigned short v112 = 5;

unsigned int v29 (unsigned int v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 5U;
signed char v117 = -2;
unsigned short v116 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned int v121 = 7U;
unsigned short v120 = 3;
unsigned int v119 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
signed int v124 = 0;
signed short v123 = 2;
unsigned short v122 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned int v125, unsigned int v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = 3;
signed short v128 = -2;
signed int v127 = 3;
trace++;
switch (trace)
{
case 2: 
return 3;
default: abort ();
}
}
}
}

signed char v1 (unsigned int v130, signed short v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed char v134 = 0;
signed int v133 = -2;
signed char v132 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed int v135;
unsigned char v136;
v135 = v133 - 2;
v136 = v5 (v135);
history[history_index++] = (int)v136;
}
break;
case 4: 
{
unsigned int v137;
v137 = v11 ();
history[history_index++] = (int)v137;
}
break;
case 10: 
{
signed int v138;
signed int v139;
signed int v140;
signed int v141;
v138 = v133 - -4;
v139 = v133 - -2;
v140 = 3 - -4;
v141 = v133 + v133;
v27 (v138, v139, v140, v141);
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}
