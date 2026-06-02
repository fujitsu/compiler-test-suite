#include <stdlib.h>
signed int v1 (signed short, unsigned int, unsigned short, unsigned int);
signed int (*v2) (signed short, unsigned int, unsigned short, unsigned int) = v1;
unsigned short v3 (signed char);
unsigned short (*v4) (signed char) = v3;
extern unsigned int v5 (unsigned char, unsigned char);
extern unsigned int (*v6) (unsigned char, unsigned char);
unsigned char v7 (unsigned char, signed int, signed short, signed short);
unsigned char (*v8) (unsigned char, signed int, signed short, signed short) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (unsigned char, unsigned short);
extern void (*v14) (unsigned char, unsigned short);
extern void v15 (unsigned short, unsigned short);
extern void (*v16) (unsigned short, unsigned short);
extern unsigned short v17 (unsigned short, unsigned char, signed char, unsigned int);
extern unsigned short (*v18) (unsigned short, unsigned char, signed char, unsigned int);
void v19 (unsigned char);
void (*v20) (unsigned char) = v19;
extern signed char v21 (signed int, unsigned char, unsigned char, signed short);
extern signed char (*v22) (signed int, unsigned char, unsigned char, signed short);
unsigned short v23 (unsigned char, unsigned short, signed short);
unsigned short (*v24) (unsigned char, unsigned short, signed short) = v23;
unsigned char v25 (unsigned int, unsigned int);
unsigned char (*v26) (unsigned int, unsigned int) = v25;
extern unsigned int v27 (signed int, unsigned short);
extern unsigned int (*v28) (signed int, unsigned short);
extern unsigned short v29 (unsigned int, signed short);
extern unsigned short (*v30) (unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v101 = -1;
signed int v100 = -4;
signed short v99 = 3;

unsigned char v25 (unsigned int v102, unsigned int v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = 1;
unsigned short v105 = 5;
signed char v104 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (unsigned char v107, unsigned short v108, signed short v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 4U;
unsigned int v111 = 4U;
signed int v110 = -3;
trace++;
switch (trace)
{
case 8: 
return v108;
default: abort ();
}
}
}
}

void v19 (unsigned char v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 5U;
unsigned char v115 = 1;
unsigned short v114 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v117, signed int v118, signed short v119, signed short v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned int v123 = 2U;
signed int v122 = 2;
unsigned short v121 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed char v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 7;
signed short v126 = -4;
unsigned char v125 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed short v128, unsigned int v129, unsigned short v130, unsigned int v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed short v134 = -1;
signed int v133 = 1;
unsigned char v132 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v135;
signed short v136;
unsigned short v137;
v135 = v129 + 5U;
v136 = 1 - v128;
v137 = v29 (v135, v136);
history[history_index++] = (int)v137;
}
break;
case 2: 
{
signed int v138;
unsigned short v139;
unsigned int v140;
v138 = -2 + -1;
v139 = v130 + 3;
v140 = v27 (v138, v139);
history[history_index++] = (int)v140;
}
break;
case 4: 
{
unsigned short v141;
unsigned short v142;
v141 = 0 + v130;
v142 = v130 + v130;
v15 (v141, v142);
}
break;
case 6: 
{
unsigned short v143;
unsigned short v144;
v143 = 1 - 3;
v144 = 4 - 1;
v15 (v143, v144);
}
break;
case 10: 
{
signed int v145;
unsigned char v146;
unsigned char v147;
signed short v148;
signed char v149;
v145 = -2 - v133;
v146 = v132 - 7;
v147 = 4 - v132;
v148 = v134 - v134;
v149 = v21 (v145, v146, v147, v148);
history[history_index++] = (int)v149;
}
break;
case 12: 
return v133;
default: abort ();
}
}
}
}
