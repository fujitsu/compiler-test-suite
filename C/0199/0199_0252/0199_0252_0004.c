#include <stdlib.h>
extern signed int v1 (signed char, unsigned int, signed char, signed short);
extern signed int (*v2) (signed char, unsigned int, signed char, signed short);
signed int v3 (signed char, signed short, unsigned int);
signed int (*v4) (signed char, signed short, unsigned int) = v3;
extern signed short v5 (signed short, unsigned short, unsigned short);
extern signed short (*v6) (signed short, unsigned short, unsigned short);
extern signed int v7 (signed short);
extern signed int (*v8) (signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
unsigned char v11 (unsigned short);
unsigned char (*v12) (unsigned short) = v11;
signed char v13 (unsigned int, signed char);
signed char (*v14) (unsigned int, signed char) = v13;
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern unsigned short v17 (unsigned int, signed short, signed short, signed int);
extern unsigned short (*v18) (unsigned int, signed short, signed short, signed int);
signed short v19 (signed int);
signed short (*v20) (signed int) = v19;
extern unsigned char v21 (signed short, signed char);
extern unsigned char (*v22) (signed short, signed char);
extern unsigned int v23 (signed int, unsigned char, signed char);
extern unsigned int (*v24) (signed int, unsigned char, signed char);
signed short v25 (signed short);
signed short (*v26) (signed short) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern signed short v29 (signed short, signed short, signed short);
extern signed short (*v30) (signed short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v114 = 3;
signed short v113 = -2;
unsigned int v112 = 6U;

signed short v25 (signed short v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 7U;
signed int v117 = 2;
unsigned int v116 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed int v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 6;
unsigned char v121 = 3;
signed int v120 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned int v123, signed char v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = -4;
unsigned short v126 = 5;
unsigned int v125 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
unsigned short v131 = 2;
signed int v130 = -3;
signed short v129 = -2;
trace++;
switch (trace)
{
case 6: 
{
signed short v132;
signed char v133;
unsigned char v134;
v132 = v129 + 0;
v133 = -1 + 3;
v134 = v21 (v132, v133);
history[history_index++] = (int)v134;
}
break;
case 8: 
{
signed int v135;
unsigned char v136;
signed char v137;
unsigned int v138;
v135 = v130 - -2;
v136 = 7 - 7;
v137 = 1 + 0;
v138 = v23 (v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 10: 
{
signed short v139;
signed char v140;
unsigned char v141;
v139 = 3 - -4;
v140 = -4 + -1;
v141 = v21 (v139, v140);
history[history_index++] = (int)v141;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

signed int v3 (signed char v142, signed short v143, unsigned int v144)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned char v147 = 7;
signed short v146 = 1;
signed short v145 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
