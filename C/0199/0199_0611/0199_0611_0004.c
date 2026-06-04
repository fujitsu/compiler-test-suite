#include <stdlib.h>
signed int v1 (signed short, signed short, unsigned char, signed int);
signed int (*v2) (signed short, signed short, unsigned char, signed int) = v1;
extern unsigned int v3 (unsigned int, unsigned int, unsigned char, unsigned int);
extern unsigned int (*v4) (unsigned int, unsigned int, unsigned char, unsigned int);
extern unsigned char v5 (unsigned short, unsigned int, signed short, unsigned int);
extern unsigned char (*v6) (unsigned short, unsigned int, signed short, unsigned int);
extern signed char v7 (unsigned short, signed int, signed char);
extern signed char (*v8) (unsigned short, signed int, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (unsigned int, unsigned int);
extern unsigned int (*v12) (unsigned int, unsigned int);
extern unsigned char v13 (signed short, signed int, unsigned char, unsigned int);
extern unsigned char (*v14) (signed short, signed int, unsigned char, unsigned int);
unsigned int v15 (unsigned short, unsigned int, unsigned char, unsigned int);
unsigned int (*v16) (unsigned short, unsigned int, unsigned char, unsigned int) = v15;
extern signed int v17 (signed short, signed int, signed char);
extern signed int (*v18) (signed short, signed int, signed char);
extern signed int v19 (unsigned char, unsigned char, signed short, signed int);
extern signed int (*v20) (unsigned char, unsigned char, signed short, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned int v23 (unsigned int, signed int);
extern unsigned int (*v24) (unsigned int, signed int);
extern unsigned int v25 (unsigned char, signed int, unsigned short, signed short);
extern unsigned int (*v26) (unsigned char, signed int, unsigned short, signed short);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern unsigned int v29 (signed char, signed int, signed short);
extern unsigned int (*v30) (signed char, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v130 = 6;
signed int v129 = 2;
unsigned char v128 = 3;

unsigned int v15 (unsigned short v131, unsigned int v132, unsigned char v133, unsigned int v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned short v137 = 6;
signed int v136 = 2;
signed short v135 = 1;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v138;
signed int v139;
unsigned short v140;
signed short v141;
unsigned int v142;
v138 = 4 + v133;
v139 = 0 - 2;
v140 = 2 + v131;
v141 = 3 + v135;
v142 = v25 (v138, v139, v140, v141);
history[history_index++] = (int)v142;
}
break;
case 4: 
{
unsigned char v143;
signed int v144;
unsigned short v145;
signed short v146;
unsigned int v147;
v143 = 3 - v133;
v144 = -3 - v136;
v145 = 5 - 4;
v146 = -4 - v135;
v147 = v25 (v143, v144, v145, v146);
history[history_index++] = (int)v147;
}
break;
case 6: 
{
unsigned char v148;
signed int v149;
unsigned short v150;
signed short v151;
unsigned int v152;
v148 = v133 - v133;
v149 = -3 - v136;
v150 = v137 - v131;
v151 = v135 + -4;
v152 = v25 (v148, v149, v150, v151);
history[history_index++] = (int)v152;
}
break;
case 8: 
{
unsigned char v153;
signed int v154;
unsigned short v155;
signed short v156;
unsigned int v157;
v153 = v133 + 6;
v154 = v136 + -4;
v155 = v131 + v131;
v156 = 1 + -3;
v157 = v25 (v153, v154, v155, v156);
history[history_index++] = (int)v157;
}
break;
case 10: 
{
unsigned char v158;
signed int v159;
unsigned short v160;
signed short v161;
unsigned int v162;
v158 = v133 - v133;
v159 = v136 - -4;
v160 = v137 + v137;
v161 = -1 - 2;
v162 = v25 (v158, v159, v160, v161);
history[history_index++] = (int)v162;
}
break;
case 12: 
return 0U;
default: abort ();
}
}
}
}

signed int v1 (signed short v163, signed short v164, unsigned char v165, signed int v166)
{
history[history_index++] = (int)v163;
history[history_index++] = (int)v164;
history[history_index++] = (int)v165;
history[history_index++] = (int)v166;
{
for (;;) {
unsigned short v169 = 7;
unsigned char v168 = 3;
signed short v167 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v170;
unsigned int v171;
unsigned int v172;
v170 = 6U - 4U;
v171 = 2U - 4U;
v172 = v11 (v170, v171);
history[history_index++] = (int)v172;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
