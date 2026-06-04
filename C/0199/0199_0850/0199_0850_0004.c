#include <stdlib.h>
extern void v1 (unsigned char, unsigned char);
extern void (*v2) (unsigned char, unsigned char);
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern signed short v5 (signed char, signed int);
extern signed short (*v6) (signed char, signed int);
signed int v7 (unsigned short, unsigned int);
signed int (*v8) (unsigned short, unsigned int) = v7;
extern signed char v9 (signed int, unsigned int);
extern signed char (*v10) (signed int, unsigned int);
signed short v11 (unsigned short, unsigned int);
signed short (*v12) (unsigned short, unsigned int) = v11;
signed int v13 (signed short, signed int, unsigned short);
signed int (*v14) (signed short, signed int, unsigned short) = v13;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
unsigned short v17 (signed char, signed short, unsigned char, unsigned int);
unsigned short (*v18) (signed char, signed short, unsigned char, unsigned int) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed short v21 (signed short, unsigned int, unsigned int, unsigned int);
extern signed short (*v22) (signed short, unsigned int, unsigned int, unsigned int);
extern unsigned int v23 (signed short, unsigned int, unsigned short);
extern unsigned int (*v24) (signed short, unsigned int, unsigned short);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern unsigned int v27 (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned int (*v28) (signed short, unsigned char, unsigned short, unsigned short);
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v106 = 2;
signed short v105 = -4;
signed short v104 = 2;

unsigned short v29 (void)
{
{
for (;;) {
unsigned int v109 = 5U;
unsigned char v108 = 1;
signed int v107 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed char v110, signed short v111, unsigned char v112, unsigned int v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 2U;
signed int v115 = -4;
unsigned char v114 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed short v117;
unsigned int v118;
unsigned int v119;
unsigned int v120;
signed short v121;
v117 = -3 - -2;
v118 = 4U - 2U;
v119 = v116 + v116;
v120 = 5U - 3U;
v121 = v21 (v117, v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 3: 
{
signed short v122;
unsigned int v123;
unsigned int v124;
unsigned int v125;
signed short v126;
v122 = v111 + v111;
v123 = v116 + v116;
v124 = v116 - v116;
v125 = v113 + v113;
v126 = v21 (v122, v123, v124, v125);
history[history_index++] = (int)v126;
}
break;
case 9: 
{
signed short v127;
unsigned int v128;
unsigned short v129;
unsigned int v130;
v127 = v111 - -2;
v128 = v113 + 0U;
v129 = 1 + 3;
v130 = v23 (v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 11: 
return 5;
default: abort ();
}
}
}
}

signed int v13 (signed short v131, signed int v132, unsigned short v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned int v136 = 4U;
signed short v135 = -1;
signed char v134 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned short v137, unsigned int v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned short v141 = 1;
unsigned int v140 = 4U;
signed short v139 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned short v142, unsigned int v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed char v146 = 1;
unsigned int v145 = 0U;
signed char v144 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
