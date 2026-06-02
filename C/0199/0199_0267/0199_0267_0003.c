#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned char, signed int);
extern unsigned char (*v2) (unsigned int, unsigned char, signed int);
extern void v3 (void);
extern void (*v4) (void);
signed char v5 (signed char);
signed char (*v6) (signed char) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed int v9 (unsigned char, signed char, unsigned int);
extern signed int (*v10) (unsigned char, signed char, unsigned int);
extern unsigned short v11 (signed char, unsigned short, signed int, unsigned int);
extern unsigned short (*v12) (signed char, unsigned short, signed int, unsigned int);
extern signed char v13 (unsigned short, signed char, signed char);
extern signed char (*v14) (unsigned short, signed char, signed char);
unsigned char v15 (unsigned char);
unsigned char (*v16) (unsigned char) = v15;
extern signed char v17 (signed int, unsigned int, signed char);
extern signed char (*v18) (signed int, unsigned int, signed char);
signed char v19 (signed char, unsigned short, unsigned short);
signed char (*v20) (signed char, unsigned short, unsigned short) = v19;
extern void v21 (signed char, signed char);
extern void (*v22) (signed char, signed char);
extern unsigned char v23 (signed char, signed char, unsigned short);
extern unsigned char (*v24) (signed char, signed char, unsigned short);
void v25 (unsigned int, unsigned char, signed short, unsigned int);
void (*v26) (unsigned int, unsigned char, signed short, unsigned int) = v25;
extern unsigned short v27 (unsigned int, unsigned short);
extern unsigned short (*v28) (unsigned int, unsigned short);
signed int v29 (unsigned int, signed char, signed short, unsigned short);
signed int (*v30) (unsigned int, signed char, signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v92 = 3;
unsigned short v91 = 3;
signed short v90 = 2;

signed int v29 (unsigned int v93, signed char v94, signed short v95, unsigned short v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 5;
unsigned short v98 = 2;
signed int v97 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (unsigned int v100, unsigned char v101, signed short v102, unsigned int v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = 1;
signed int v105 = 1;
signed char v104 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed char v107, unsigned short v108, unsigned short v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 4;
signed short v111 = 0;
unsigned short v110 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned char v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 0;
unsigned int v115 = 0U;
unsigned short v114 = 5;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v117;
signed char v118;
signed char v119;
signed char v120;
v117 = v114 - 4;
v118 = -4 - 2;
v119 = -2 + 3;
v120 = v13 (v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 3: 
{
unsigned short v121;
signed char v122;
signed char v123;
signed char v124;
v121 = 6 - v114;
v122 = -3 + -1;
v123 = 0 + 3;
v124 = v13 (v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 5: 
{
unsigned short v125;
signed char v126;
signed char v127;
signed char v128;
v125 = 7 + v114;
v126 = 3 + -3;
v127 = -2 + 3;
v128 = v13 (v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 7: 
{
unsigned short v129;
signed char v130;
signed char v131;
signed char v132;
v129 = v114 - v114;
v130 = 2 - 2;
v131 = -4 - 3;
v132 = v13 (v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 9: 
{
unsigned short v133;
signed char v134;
signed char v135;
signed char v136;
v133 = v114 + v114;
v134 = -4 - -2;
v135 = 1 - -2;
v136 = v13 (v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 11: 
return v116;
default: abort ();
}
}
}
}

signed char v5 (signed char v137)
{
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = -1;
signed short v139 = -1;
signed short v138 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
