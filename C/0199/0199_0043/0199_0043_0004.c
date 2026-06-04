#include <stdlib.h>
signed short v1 (signed int, unsigned int, signed char, signed short);
signed short (*v2) (signed int, unsigned int, signed char, signed short) = v1;
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern signed int v5 (signed char, unsigned int, signed int);
extern signed int (*v6) (signed char, unsigned int, signed int);
static signed int v7 (signed short, unsigned int, unsigned int, unsigned int);
static signed int (*v8) (signed short, unsigned int, unsigned int, unsigned int) = v7;
unsigned short v9 (unsigned char, signed char, unsigned short);
unsigned short (*v10) (unsigned char, signed char, unsigned short) = v9;
unsigned short v11 (unsigned char, signed short, unsigned int, unsigned int);
unsigned short (*v12) (unsigned char, signed short, unsigned int, unsigned int) = v11;
static signed short v13 (unsigned int, unsigned short);
static signed short (*v14) (unsigned int, unsigned short) = v13;
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern void v17 (unsigned short, unsigned short, unsigned int);
extern void (*v18) (unsigned short, unsigned short, unsigned int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern unsigned char v21 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v22) (unsigned char, unsigned short, unsigned short);
extern signed char v23 (signed char, signed int, unsigned int, unsigned int);
extern signed char (*v24) (signed char, signed int, unsigned int, unsigned int);
extern void v25 (unsigned char, signed char, signed int, unsigned short);
extern void (*v26) (unsigned char, signed char, signed int, unsigned short);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed char v29 (signed char, unsigned short, unsigned int, signed int);
extern signed char (*v30) (signed char, unsigned short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v106 = 1;
unsigned int v105 = 7U;
signed int v104 = 1;

static signed short v13 (unsigned int v107, unsigned short v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = 3;
unsigned short v110 = 0;
unsigned int v109 = 7U;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v112;
signed char v113;
signed int v114;
unsigned short v115;
v112 = 1 - 4;
v113 = 2 + -1;
v114 = -2 - -4;
v115 = v110 + v108;
v25 (v112, v113, v114, v115);
}
break;
case 5: 
{
unsigned char v116;
signed char v117;
signed int v118;
unsigned short v119;
v116 = 0 + 1;
v117 = 0 - 3;
v118 = 1 + -1;
v119 = 0 + 1;
v25 (v116, v117, v118, v119);
}
break;
case 7: 
return 2;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned char v120, signed short v121, unsigned int v122, unsigned int v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 4;
unsigned int v125 = 3U;
unsigned char v124 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned char v127, signed char v128, unsigned short v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed char v132 = 1;
unsigned short v131 = 3;
signed short v130 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v7 (signed short v133, unsigned int v134, unsigned int v135, unsigned int v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned short v139 = 5;
unsigned char v138 = 1;
signed short v137 = -1;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v140;
unsigned short v141;
unsigned short v142;
unsigned char v143;
v140 = v138 + 2;
v141 = 3 + 3;
v142 = v139 - 1;
v143 = v21 (v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

signed short v1 (signed int v144, unsigned int v145, signed char v146, signed short v147)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
unsigned char v150 = 3;
unsigned char v149 = 7;
signed int v148 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v151;
unsigned short v152;
unsigned short v153;
unsigned char v154;
v151 = v150 + v150;
v152 = 6 + 3;
v153 = 0 + 0;
v154 = v21 (v151, v152, v153);
history[history_index++] = (int)v154;
}
break;
case 2: 
{
unsigned int v155;
unsigned short v156;
signed short v157;
v155 = 3U + v145;
v156 = 0 - 1;
v157 = v13 (v155, v156);
history[history_index++] = (int)v157;
}
break;
case 8: 
return 1;
case 9: 
{
signed short v158;
unsigned int v159;
unsigned int v160;
unsigned int v161;
signed int v162;
v158 = 0 - v147;
v159 = 1U + 6U;
v160 = v145 + v145;
v161 = v145 + v145;
v162 = v7 (v158, v159, v160, v161);
history[history_index++] = (int)v162;
}
break;
case 13: 
return -2;
default: abort ();
}
}
}
}
