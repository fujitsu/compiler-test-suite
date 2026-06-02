#include <stdlib.h>
unsigned char v1 (signed short, signed int);
unsigned char (*v2) (signed short, signed int) = v1;
signed short v3 (signed int, signed char, signed int, signed char);
signed short (*v4) (signed int, signed char, signed int, signed char) = v3;
extern signed char v5 (signed char, signed int, unsigned int, signed short);
extern signed char (*v6) (signed char, signed int, unsigned int, signed short);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern unsigned int v9 (unsigned char, signed char, signed short);
extern unsigned int (*v10) (unsigned char, signed char, signed short);
unsigned char v11 (unsigned int);
unsigned char (*v12) (unsigned int) = v11;
signed int v13 (unsigned char, signed short);
signed int (*v14) (unsigned char, signed short) = v13;
extern void v15 (signed char, unsigned char);
extern void (*v16) (signed char, unsigned char);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern unsigned char v19 (unsigned int, signed int, signed int, signed char);
extern unsigned char (*v20) (unsigned int, signed int, signed int, signed char);
extern signed int v21 (unsigned int, signed char, unsigned char, unsigned short);
extern signed int (*v22) (unsigned int, signed char, unsigned char, unsigned short);
extern signed char v23 (unsigned char);
extern signed char (*v24) (unsigned char);
signed short v25 (unsigned short, signed short, signed short, unsigned int);
signed short (*v26) (unsigned short, signed short, signed short, unsigned int) = v25;
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern signed short v29 (signed int, unsigned char, signed char, unsigned int);
extern signed short (*v30) (signed int, unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v111 = 2;
signed short v110 = 0;
unsigned short v109 = 3;

signed short v25 (unsigned short v112, signed short v113, signed short v114, unsigned int v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 4U;
signed char v117 = 3;
unsigned int v116 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
unsigned short v121 = 7;
unsigned char v120 = 5;
unsigned short v119 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned char v122, signed short v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed char v126 = -1;
unsigned char v125 = 4;
unsigned short v124 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 3;
unsigned char v129 = 6;
unsigned int v128 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
signed char v133 = 3;
signed int v132 = 3;
signed short v131 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed int v134, signed char v135, signed int v136, signed char v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = -1;
unsigned short v139 = 4;
unsigned int v138 = 6U;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v141;
signed char v142;
unsigned char v143;
unsigned short v144;
signed int v145;
v141 = v138 - 0U;
v142 = v140 - v137;
v143 = 1 - 6;
v144 = v139 + 4;
v145 = v21 (v141, v142, v143, v144);
history[history_index++] = (int)v145;
}
break;
case 4: 
{
unsigned int v146;
signed int v147;
signed int v148;
signed char v149;
unsigned char v150;
v146 = v138 + 1U;
v147 = 3 - v134;
v148 = v134 - 3;
v149 = v135 + -2;
v150 = v19 (v146, v147, v148, v149);
history[history_index++] = (int)v150;
}
break;
case 6: 
{
unsigned int v151;
signed int v152;
signed int v153;
signed char v154;
unsigned char v155;
v151 = 6U - v138;
v152 = v134 + v134;
v153 = 1 + v134;
v154 = v135 - v140;
v155 = v19 (v151, v152, v153, v154);
history[history_index++] = (int)v155;
}
break;
case 8: 
{
unsigned int v156;
signed char v157;
unsigned char v158;
unsigned short v159;
signed int v160;
v156 = 0U + 2U;
v157 = -4 - v140;
v158 = 0 - 4;
v159 = v139 + 1;
v160 = v21 (v156, v157, v158, v159);
history[history_index++] = (int)v160;
}
break;
case 10: 
{
unsigned int v161;
signed int v162;
signed int v163;
signed char v164;
unsigned char v165;
v161 = 7U + 3U;
v162 = v134 - v136;
v163 = v134 + 3;
v164 = v140 + v140;
v165 = v19 (v161, v162, v163, v164);
history[history_index++] = (int)v165;
}
break;
case 12: 
return -1;
case 14: 
return -3;
case 16: 
return -4;
default: abort ();
}
}
}
}

unsigned char v1 (signed short v166, signed int v167)
{
history[history_index++] = (int)v166;
history[history_index++] = (int)v167;
{
for (;;) {
signed char v170 = 3;
signed int v169 = 3;
unsigned int v168 = 5U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v171;
signed char v172;
unsigned char v173;
unsigned short v174;
signed int v175;
v171 = v168 - 1U;
v172 = v170 - v170;
v173 = 5 - 5;
v174 = 6 - 5;
v175 = v21 (v171, v172, v173, v174);
history[history_index++] = (int)v175;
}
break;
case 18: 
return 6;
default: abort ();
}
}
}
}
