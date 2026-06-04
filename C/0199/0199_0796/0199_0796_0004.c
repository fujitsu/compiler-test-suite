#include <stdlib.h>
unsigned char v1 (signed char, unsigned int);
unsigned char (*v2) (signed char, unsigned int) = v1;
extern unsigned short v3 (unsigned char, signed short, unsigned int, unsigned short);
extern unsigned short (*v4) (unsigned char, signed short, unsigned int, unsigned short);
extern unsigned char v5 (signed int, signed short, signed char, signed short);
extern unsigned char (*v6) (signed int, signed short, signed char, signed short);
extern unsigned short v7 (unsigned char, signed char, unsigned char);
extern unsigned short (*v8) (unsigned char, signed char, unsigned char);
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
static unsigned int v11 (unsigned short, signed short, signed int);
static unsigned int (*v12) (unsigned short, signed short, signed int) = v11;
unsigned short v13 (unsigned char);
unsigned short (*v14) (unsigned char) = v13;
extern unsigned char v15 (unsigned short, unsigned char, signed char);
extern unsigned char (*v16) (unsigned short, unsigned char, signed char);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern signed char v19 (unsigned int, unsigned char, signed short, signed int);
extern signed char (*v20) (unsigned int, unsigned char, signed short, signed int);
extern signed int v21 (signed int);
extern signed int (*v22) (signed int);
unsigned int v23 (unsigned int, signed int, signed int);
unsigned int (*v24) (unsigned int, signed int, signed int) = v23;
extern signed int v25 (unsigned int, signed char, signed short, unsigned int);
extern signed int (*v26) (unsigned int, signed char, signed short, unsigned int);
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v106 = 3;
signed char v105 = 0;
signed short v104 = -1;

unsigned int v23 (unsigned int v107, signed int v108, signed int v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed char v112 = 0;
unsigned short v111 = 5;
signed int v110 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
signed short v115 = -2;
unsigned int v114 = 4U;
signed short v113 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
unsigned char v119 = 2;
unsigned char v118 = 6;
unsigned short v117 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v11 (unsigned short v120, signed short v121, signed int v122)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 2;
unsigned int v124 = 5U;
signed short v123 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed int v126;
signed short v127;
signed char v128;
signed short v129;
unsigned char v130;
v126 = v122 + v122;
v127 = -1 - -4;
v128 = -2 + 3;
v129 = v121 + v123;
v130 = v5 (v126, v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 3: 
{
signed int v131;
signed short v132;
signed char v133;
signed short v134;
unsigned char v135;
v131 = v122 + 1;
v132 = v121 + v121;
v133 = -4 - 0;
v134 = v123 - v123;
v135 = v5 (v131, v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 5: 
return 1U;
case 7: 
{
signed int v136;
signed short v137;
signed char v138;
signed short v139;
unsigned char v140;
v136 = v122 + v122;
v137 = v121 + 2;
v138 = 2 - -4;
v139 = v123 - v123;
v140 = v5 (v136, v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 9: 
{
signed int v141;
signed short v142;
signed char v143;
signed short v144;
unsigned char v145;
v141 = v122 + 2;
v142 = v121 - v123;
v143 = 3 - 3;
v144 = v123 - v123;
v145 = v5 (v141, v142, v143, v144);
history[history_index++] = (int)v145;
}
break;
case 11: 
return 7U;
default: abort ();
}
}
}
}

unsigned char v1 (signed char v146, unsigned int v147)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed int v150 = -3;
unsigned int v149 = 4U;
unsigned char v148 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v151;
signed short v152;
signed int v153;
unsigned int v154;
v151 = 4 + 7;
v152 = -1 + -4;
v153 = v150 + v150;
v154 = v11 (v151, v152, v153);
history[history_index++] = (int)v154;
}
break;
case 6: 
{
unsigned short v155;
signed short v156;
signed int v157;
unsigned int v158;
v155 = 6 + 6;
v156 = 0 - -4;
v157 = v150 + v150;
v158 = v11 (v155, v156, v157);
history[history_index++] = (int)v158;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
