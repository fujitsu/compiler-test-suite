#include <stdlib.h>
signed short v1 (signed short, unsigned char, unsigned char);
signed short (*v2) (signed short, unsigned char, unsigned char) = v1;
extern signed char v3 (unsigned char, signed short, unsigned char);
extern signed char (*v4) (unsigned char, signed short, unsigned char);
extern unsigned short v5 (unsigned char, unsigned short, unsigned char);
extern unsigned short (*v6) (unsigned char, unsigned short, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed int v9 (unsigned int, signed int, signed char, unsigned int);
extern signed int (*v10) (unsigned int, signed int, signed char, unsigned int);
unsigned char v11 (signed short, signed int, unsigned short);
unsigned char (*v12) (signed short, signed int, unsigned short) = v11;
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern void v15 (signed short, unsigned int, unsigned char, unsigned char);
extern void (*v16) (signed short, unsigned int, unsigned char, unsigned char);
signed int v17 (unsigned int, signed short, unsigned char, unsigned char);
signed int (*v18) (unsigned int, signed short, unsigned char, unsigned char) = v17;
extern unsigned short v19 (unsigned int, unsigned short, signed char, signed short);
extern unsigned short (*v20) (unsigned int, unsigned short, signed char, signed short);
extern signed short v21 (unsigned short, signed char, unsigned int, signed char);
extern signed short (*v22) (unsigned short, signed char, unsigned int, signed char);
extern unsigned int v23 (signed int, unsigned short, unsigned char);
extern unsigned int (*v24) (signed int, unsigned short, unsigned char);
extern unsigned int v25 (signed char);
extern unsigned int (*v26) (signed char);
extern signed int v27 (unsigned short, unsigned char, signed short, unsigned short);
extern signed int (*v28) (unsigned short, unsigned char, signed short, unsigned short);
extern unsigned int v29 (signed char, signed char);
extern unsigned int (*v30) (signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v122 = -1;
signed short v121 = 2;
signed short v120 = -2;

signed int v17 (unsigned int v123, signed short v124, unsigned char v125, unsigned char v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned short v129 = 1;
signed short v128 = 2;
signed short v127 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed short v130, signed int v131, unsigned short v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed char v135 = 2;
unsigned char v134 = 1;
unsigned int v133 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed short v136, unsigned char v137, unsigned char v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned short v141 = 3;
signed int v140 = -4;
unsigned char v139 = 6;
trace++;
switch (trace)
{
case 0: 
return -2;
case 1: 
{
unsigned char v142;
signed short v143;
unsigned char v144;
signed char v145;
v142 = v139 - v139;
v143 = 2 - v136;
v144 = v139 - v139;
v145 = v3 (v142, v143, v144);
history[history_index++] = (int)v145;
}
break;
case 3: 
{
unsigned int v146;
signed int v147;
signed char v148;
unsigned int v149;
signed int v150;
v146 = 4U + 0U;
v147 = v140 + v140;
v148 = -2 - -1;
v149 = 1U - 2U;
v150 = v9 (v146, v147, v148, v149);
history[history_index++] = (int)v150;
}
break;
case 5: 
return 0;
case 6: 
{
unsigned char v151;
signed short v152;
unsigned char v153;
signed char v154;
v151 = v138 - v139;
v152 = -4 - -4;
v153 = 2 + v139;
v154 = v3 (v151, v152, v153);
history[history_index++] = (int)v154;
}
break;
case 8: 
return v136;
case 9: 
{
unsigned char v155;
unsigned short v156;
unsigned char v157;
unsigned short v158;
v155 = v139 + 2;
v156 = 0 - v141;
v157 = v137 + 6;
v158 = v5 (v155, v156, v157);
history[history_index++] = (int)v158;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}
