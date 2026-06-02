#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern signed char v3 (signed short, signed short);
extern signed char (*v4) (signed short, signed short);
extern unsigned short v5 (unsigned int, unsigned short, signed short);
extern unsigned short (*v6) (unsigned int, unsigned short, signed short);
extern unsigned int v7 (signed char, signed int, signed int, unsigned int);
extern unsigned int (*v8) (signed char, signed int, signed int, unsigned int);
unsigned int v9 (unsigned int, unsigned char, signed int, unsigned char);
unsigned int (*v10) (unsigned int, unsigned char, signed int, unsigned char) = v9;
extern void v11 (void);
extern void (*v12) (void);
unsigned int v13 (signed short, signed char);
unsigned int (*v14) (signed short, signed char) = v13;
unsigned short v15 (unsigned char, unsigned char, unsigned int);
unsigned short (*v16) (unsigned char, unsigned char, unsigned int) = v15;
signed int v17 (void);
signed int (*v18) (void) = v17;
unsigned char v19 (signed char);
unsigned char (*v20) (signed char) = v19;
extern void v21 (unsigned short);
extern void (*v22) (unsigned short);
extern unsigned char v23 (unsigned short, unsigned char, signed char);
extern unsigned char (*v24) (unsigned short, unsigned char, signed char);
extern signed short v25 (signed short, unsigned int, unsigned short);
extern signed short (*v26) (signed short, unsigned int, unsigned short);
extern signed int v27 (signed char, unsigned short, unsigned short, signed char);
extern signed int (*v28) (signed char, unsigned short, unsigned short, signed char);
extern signed int v29 (unsigned int, unsigned int, unsigned int, signed char);
extern signed int (*v30) (unsigned int, unsigned int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v109 = 3;
signed short v108 = 3;
signed short v107 = -2;

unsigned char v19 (signed char v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = -1;
signed int v112 = -1;
signed int v111 = -4;
trace++;
switch (trace)
{
case 4: 
return 3;
default: abort ();
}
}
}
}

signed int v17 (void)
{
{
for (;;) {
signed char v116 = -3;
signed char v115 = 1;
signed int v114 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned char v117, unsigned char v118, unsigned int v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed int v122 = 2;
unsigned int v121 = 1U;
signed int v120 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed short v123, signed char v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 0;
signed char v126 = -3;
unsigned short v125 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned int v128, unsigned char v129, signed int v130, unsigned char v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned char v134 = 1;
unsigned short v133 = 5;
unsigned short v132 = 7;
trace++;
switch (trace)
{
case 8: 
{
signed short v135;
unsigned int v136;
unsigned short v137;
signed short v138;
v135 = 1 + -1;
v136 = 0U + 5U;
v137 = v132 + v133;
v138 = v25 (v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 10: 
{
signed short v139;
unsigned int v140;
unsigned short v141;
signed short v142;
v139 = 0 + -1;
v140 = 4U + v128;
v141 = v132 - v132;
v142 = v25 (v139, v140, v141);
history[history_index++] = (int)v142;
}
break;
case 12: 
return v128;
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
unsigned int v145 = 4U;
unsigned char v144 = 7;
signed char v143 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed char v146;
signed int v147;
signed int v148;
unsigned int v149;
unsigned int v150;
v146 = v143 + v143;
v147 = 2 - 1;
v148 = 3 - -1;
v149 = 4U + 0U;
v150 = v7 (v146, v147, v148, v149);
history[history_index++] = (int)v150;
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}
