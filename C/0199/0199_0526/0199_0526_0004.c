#include <stdlib.h>
signed int v1 (unsigned int, unsigned short, unsigned char, signed int);
signed int (*v2) (unsigned int, unsigned short, unsigned char, signed int) = v1;
extern signed int v3 (signed char, signed char, signed int, unsigned char);
extern signed int (*v4) (signed char, signed char, signed int, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
extern void v7 (unsigned int, unsigned short, unsigned int);
extern void (*v8) (unsigned int, unsigned short, unsigned int);
extern signed int v9 (unsigned short, unsigned short, unsigned char, signed char);
extern signed int (*v10) (unsigned short, unsigned short, unsigned char, signed char);
extern void v11 (unsigned short, unsigned short);
extern void (*v12) (unsigned short, unsigned short);
static unsigned int v13 (unsigned short, signed short, unsigned char, unsigned char);
static unsigned int (*v14) (unsigned short, signed short, unsigned char, unsigned char) = v13;
extern signed short v15 (unsigned int, signed int);
extern signed short (*v16) (unsigned int, signed int);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (unsigned int, unsigned short, signed short, unsigned char);
extern void (*v24) (unsigned int, unsigned short, signed short, unsigned char);
extern unsigned short v25 (signed short, unsigned int, signed int, unsigned int);
extern unsigned short (*v26) (signed short, unsigned int, signed int, unsigned int);
extern signed char v27 (unsigned char, unsigned int);
extern signed char (*v28) (unsigned char, unsigned int);
signed short v29 (signed char, unsigned int, unsigned int);
signed short (*v30) (signed char, unsigned int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v126 = 5;
signed short v125 = -2;
signed int v124 = 0;

signed short v29 (signed char v127, unsigned int v128, unsigned int v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 6;
unsigned short v131 = 2;
unsigned int v130 = 7U;
trace++;
switch (trace)
{
case 4: 
return 2;
case 6: 
{
signed char v133;
unsigned int v134;
unsigned int v135;
signed short v136;
v133 = v127 - v127;
v134 = v128 - 3U;
v135 = v128 - v130;
v136 = v29 (v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 7: 
{
signed char v137;
unsigned int v138;
unsigned int v139;
signed short v140;
v137 = -1 - v127;
v138 = 0U + v129;
v139 = v128 + v129;
v140 = v29 (v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 8: 
{
signed char v141;
unsigned int v142;
unsigned int v143;
signed short v144;
v141 = 0 + 1;
v142 = 7U + v128;
v143 = v128 + v130;
v144 = v29 (v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 9: 
{
signed char v145;
unsigned int v146;
unsigned int v147;
signed short v148;
v145 = 3 + -1;
v146 = v130 + v129;
v147 = 3U + 1U;
v148 = v29 (v145, v146, v147);
history[history_index++] = (int)v148;
}
break;
case 10: 
return 1;
case 11: 
return 1;
case 12: 
return -2;
case 13: 
return 2;
case 14: 
return -1;
default: abort ();
}
}
}
}

static unsigned int v13 (unsigned short v149, signed short v150, unsigned char v151, unsigned char v152)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
{
for (;;) {
unsigned short v155 = 1;
unsigned int v154 = 6U;
signed char v153 = -2;
trace++;
switch (trace)
{
case 1: 
{
signed int v156;
v156 = v21 ();
history[history_index++] = (int)v156;
}
break;
case 17: 
return v154;
default: abort ();
}
}
}
}

signed int v1 (unsigned int v157, unsigned short v158, unsigned char v159, signed int v160)
{
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
history[history_index++] = (int)v159;
history[history_index++] = (int)v160;
{
for (;;) {
unsigned char v163 = 3;
unsigned int v162 = 3U;
signed char v161 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v164;
signed short v165;
unsigned char v166;
unsigned char v167;
unsigned int v168;
v164 = v158 - v158;
v165 = 1 - 0;
v166 = v159 + v159;
v167 = v159 - v159;
v168 = v13 (v164, v165, v166, v167);
history[history_index++] = (int)v168;
}
break;
case 18: 
return v160;
default: abort ();
}
}
}
}
