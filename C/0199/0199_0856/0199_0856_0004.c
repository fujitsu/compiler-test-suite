#include <stdlib.h>
unsigned short v1 (signed int, unsigned int, signed short, unsigned int);
unsigned short (*v2) (signed int, unsigned int, signed short, unsigned int) = v1;
unsigned short v3 (unsigned char);
unsigned short (*v4) (unsigned char) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned char v7 (unsigned short, unsigned char);
extern unsigned char (*v8) (unsigned short, unsigned char);
extern unsigned short v9 (unsigned short, signed char, unsigned short, unsigned char);
extern unsigned short (*v10) (unsigned short, signed char, unsigned short, unsigned char);
unsigned int v11 (signed int, signed int, unsigned short);
unsigned int (*v12) (signed int, signed int, unsigned short) = v11;
signed short v13 (signed short, unsigned short, signed char);
signed short (*v14) (signed short, unsigned short, signed char) = v13;
extern signed short v15 (unsigned int, signed short, signed char, signed char);
extern signed short (*v16) (unsigned int, signed short, signed char, signed char);
extern void v17 (signed int, signed char, signed short, signed int);
extern void (*v18) (signed int, signed char, signed short, signed int);
extern signed char v19 (signed char);
extern signed char (*v20) (signed char);
extern void v21 (unsigned char, unsigned char, unsigned char);
extern void (*v22) (unsigned char, unsigned char, unsigned char);
extern signed char v23 (unsigned char, unsigned char, signed char, signed int);
extern signed char (*v24) (unsigned char, unsigned char, signed char, signed int);
extern signed short v25 (unsigned short, unsigned int, unsigned int, signed char);
extern signed short (*v26) (unsigned short, unsigned int, unsigned int, signed char);
void v27 (unsigned int, unsigned short);
void (*v28) (unsigned int, unsigned short) = v27;
extern unsigned int v29 (signed int, unsigned int, unsigned int, signed int);
extern unsigned int (*v30) (signed int, unsigned int, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v114 = 3;
signed short v113 = -3;
signed int v112 = 0;

void v27 (unsigned int v115, unsigned short v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed char v119 = 1;
unsigned char v118 = 3;
unsigned char v117 = 6;
trace++;
switch (trace)
{
case 2: 
{
signed int v120;
unsigned int v121;
unsigned int v122;
signed int v123;
unsigned int v124;
v120 = -4 + -1;
v121 = 2U - 3U;
v122 = 3U - 5U;
v123 = -4 + -3;
v124 = v29 (v120, v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 4: 
{
signed int v125;
unsigned int v126;
unsigned int v127;
signed int v128;
unsigned int v129;
v125 = 3 - 3;
v126 = v115 - 4U;
v127 = v115 + 5U;
v128 = 1 + -4;
v129 = v29 (v125, v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 6: 
{
unsigned short v130;
unsigned int v131;
unsigned int v132;
signed char v133;
signed short v134;
v130 = 2 - 7;
v131 = 5U + 4U;
v132 = v115 + 6U;
v133 = v119 + 0;
v134 = v25 (v130, v131, v132, v133);
history[history_index++] = (int)v134;
}
break;
case 8: 
{
signed int v135;
unsigned int v136;
unsigned int v137;
signed int v138;
unsigned int v139;
v135 = -3 - 0;
v136 = 0U - 1U;
v137 = v115 + v115;
v138 = 2 + -2;
v139 = v29 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 10: 
{
signed int v140;
unsigned int v141;
unsigned int v142;
signed int v143;
unsigned int v144;
v140 = 3 - -2;
v141 = v115 + v115;
v142 = 7U - 5U;
v143 = 1 + -1;
v144 = v29 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed short v13 (signed short v145, unsigned short v146, signed char v147)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
unsigned short v150 = 2;
signed int v149 = -1;
unsigned short v148 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed int v151, signed int v152, unsigned short v153)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
signed char v156 = -3;
unsigned char v155 = 5;
unsigned short v154 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v157)
{
history[history_index++] = (int)v157;
{
for (;;) {
signed short v160 = -4;
unsigned short v159 = 3;
unsigned short v158 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed int v161, unsigned int v162, signed short v163, unsigned int v164)
{
history[history_index++] = (int)v161;
history[history_index++] = (int)v162;
history[history_index++] = (int)v163;
history[history_index++] = (int)v164;
{
for (;;) {
signed int v167 = -3;
unsigned short v166 = 3;
unsigned int v165 = 4U;
trace++;
switch (trace)
{
case 0: 
{
signed char v168;
signed char v169;
v168 = 2 + 0;
v169 = v19 (v168);
history[history_index++] = (int)v169;
}
break;
case 14: 
return v166;
default: abort ();
}
}
}
}
