#include <stdlib.h>
extern signed int v1 (signed short, unsigned char);
extern signed int (*v2) (signed short, unsigned char);
unsigned short v3 (unsigned int, signed short, unsigned int, unsigned short);
unsigned short (*v4) (unsigned int, signed short, unsigned int, unsigned short) = v3;
extern signed short v5 (signed short, signed char, signed char, unsigned int);
extern signed short (*v6) (signed short, signed char, signed char, unsigned int);
extern unsigned char v7 (unsigned int, signed short);
extern unsigned char (*v8) (unsigned int, signed short);
signed short v9 (unsigned char, signed short, signed char);
signed short (*v10) (unsigned char, signed short, signed char) = v9;
extern unsigned short v11 (unsigned short, unsigned int, unsigned short, signed int);
extern unsigned short (*v12) (unsigned short, unsigned int, unsigned short, signed int);
signed char v13 (unsigned short);
signed char (*v14) (unsigned short) = v13;
signed short v15 (signed short, signed short, signed char);
signed short (*v16) (signed short, signed short, signed char) = v15;
unsigned int v17 (unsigned int);
unsigned int (*v18) (unsigned int) = v17;
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned char v23 (signed short, signed short, signed int);
extern unsigned char (*v24) (signed short, signed short, signed int);
extern unsigned char v25 (signed short, signed char);
extern unsigned char (*v26) (signed short, signed char);
extern signed short v27 (unsigned char, unsigned int);
extern signed short (*v28) (unsigned char, unsigned int);
unsigned short v29 (unsigned char);
unsigned short (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v114 = -1;
signed int v113 = -2;
signed short v112 = -4;

unsigned short v29 (unsigned char v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
signed char v118 = 2;
signed int v117 = 3;
unsigned int v116 = 5U;
trace++;
switch (trace)
{
case 6: 
{
signed short v119;
signed char v120;
unsigned char v121;
v119 = 2 + 0;
v120 = v118 + -2;
v121 = v25 (v119, v120);
history[history_index++] = (int)v121;
}
break;
case 8: 
{
signed short v122;
signed char v123;
unsigned char v124;
v122 = 0 - -2;
v123 = -4 + v118;
v124 = v25 (v122, v123);
history[history_index++] = (int)v124;
}
break;
case 10: 
{
signed short v125;
signed char v126;
unsigned char v127;
v125 = -1 - -4;
v126 = v118 + v118;
v127 = v25 (v125, v126);
history[history_index++] = (int)v127;
}
break;
case 12: 
return 3;
case 14: 
return 1;
case 16: 
return 4;
default: abort ();
}
}
}
}

unsigned int v17 (unsigned int v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
unsigned int v131 = 0U;
unsigned short v130 = 7;
signed char v129 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed short v132, signed short v133, signed char v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed int v137 = 3;
unsigned int v136 = 4U;
unsigned short v135 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned short v138)
{
history[history_index++] = (int)v138;
{
for (;;) {
unsigned int v141 = 7U;
signed char v140 = 3;
unsigned short v139 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned char v142, signed short v143, signed char v144)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed char v147 = 0;
signed int v146 = -4;
unsigned short v145 = 6;
trace++;
switch (trace)
{
case 3: 
return v143;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v148, signed short v149, unsigned int v150, unsigned short v151)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
unsigned int v154 = 0U;
signed char v153 = -4;
signed short v152 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
