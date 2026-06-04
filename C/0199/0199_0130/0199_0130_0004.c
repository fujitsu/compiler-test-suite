#include <stdlib.h>
extern unsigned int v1 (signed int, signed char);
extern unsigned int (*v2) (signed int, signed char);
signed short v3 (signed short, unsigned char);
signed short (*v4) (signed short, unsigned char) = v3;
extern unsigned char v5 (unsigned short, unsigned char);
extern unsigned char (*v6) (unsigned short, unsigned char);
extern void v7 (unsigned short, unsigned short, signed char, unsigned char);
extern void (*v8) (unsigned short, unsigned short, signed char, unsigned char);
void v9 (signed char, signed short, unsigned char);
void (*v10) (signed char, signed short, unsigned char) = v9;
extern void v11 (signed short, signed char);
extern void (*v12) (signed short, signed char);
extern unsigned char v13 (signed char, signed int);
extern unsigned char (*v14) (signed char, signed int);
signed int v15 (unsigned int, signed int, signed char, signed int);
signed int (*v16) (unsigned int, signed int, signed char, signed int) = v15;
extern unsigned short v17 (unsigned int, signed short, signed char, signed char);
extern unsigned short (*v18) (unsigned int, signed short, signed char, signed char);
extern signed short v19 (signed int, unsigned short, unsigned char, signed int);
extern signed short (*v20) (signed int, unsigned short, unsigned char, signed int);
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
extern unsigned char v23 (signed short, unsigned int, signed short, signed char);
extern unsigned char (*v24) (signed short, unsigned int, signed short, signed char);
extern unsigned int v25 (unsigned int, unsigned char, signed short, unsigned short);
extern unsigned int (*v26) (unsigned int, unsigned char, signed short, unsigned short);
static signed char v27 (signed short, signed int);
static signed char (*v28) (signed short, signed int) = v27;
extern unsigned int v29 (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned int (*v30) (unsigned int, unsigned char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v121 = 3;
signed char v120 = -1;
unsigned int v119 = 2U;

static signed char v27 (signed short v122, signed int v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 6;
signed int v125 = 2;
unsigned int v124 = 3U;
trace++;
switch (trace)
{
case 2: 
{
signed short v127;
signed int v128;
signed char v129;
v127 = v122 + 3;
v128 = v123 - v125;
v129 = v27 (v127, v128);
history[history_index++] = (int)v129;
}
break;
case 3: 
{
signed short v130;
signed int v131;
signed char v132;
v130 = v122 - v122;
v131 = v123 - 1;
v132 = v27 (v130, v131);
history[history_index++] = (int)v132;
}
break;
case 4: 
return 3;
case 5: 
return -2;
case 6: 
{
signed short v133;
signed int v134;
signed char v135;
v133 = v122 - 3;
v134 = v125 - v123;
v135 = v27 (v133, v134);
history[history_index++] = (int)v135;
}
break;
case 7: 
{
signed short v136;
signed int v137;
signed char v138;
v136 = -1 - v122;
v137 = v123 + 3;
v138 = v27 (v136, v137);
history[history_index++] = (int)v138;
}
break;
case 8: 
return 0;
case 9: 
{
signed short v139;
signed int v140;
signed char v141;
v139 = v122 + v122;
v140 = -1 - -4;
v141 = v27 (v139, v140);
history[history_index++] = (int)v141;
}
break;
case 10: 
{
signed short v142;
signed int v143;
signed char v144;
v142 = 2 + -2;
v143 = v125 - v125;
v144 = v27 (v142, v143);
history[history_index++] = (int)v144;
}
break;
case 11: 
return 2;
case 12: 
return -2;
case 13: 
return 3;
case 14: 
return 0;
default: abort ();
}
}
}
}

signed int v15 (unsigned int v145, signed int v146, signed char v147, signed int v148)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
signed short v151 = -1;
unsigned int v150 = 6U;
signed short v149 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed short v152;
signed int v153;
signed char v154;
v152 = v151 + 2;
v153 = v148 - 1;
v154 = v27 (v152, v153);
history[history_index++] = (int)v154;
}
break;
case 15: 
return v148;
default: abort ();
}
}
}
}

void v9 (signed char v155, signed short v156, unsigned char v157)
{
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
{
for (;;) {
signed int v160 = 3;
signed short v159 = 0;
unsigned int v158 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed short v161, unsigned char v162)
{
history[history_index++] = (int)v161;
history[history_index++] = (int)v162;
{
for (;;) {
unsigned char v165 = 3;
signed short v164 = 0;
signed int v163 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
