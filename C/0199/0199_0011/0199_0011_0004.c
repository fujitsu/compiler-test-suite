#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned short, signed int, unsigned int);
extern signed int (*v2) (unsigned int, unsigned short, signed int, unsigned int);
signed int v3 (signed char, unsigned int, unsigned short);
signed int (*v4) (signed char, unsigned int, unsigned short) = v3;
extern unsigned char v5 (signed short, signed short, signed int, unsigned short);
extern unsigned char (*v6) (signed short, signed short, signed int, unsigned short);
unsigned char v7 (signed char, signed short, signed int);
unsigned char (*v8) (signed char, signed short, signed int) = v7;
extern unsigned int v9 (signed char, signed int);
extern unsigned int (*v10) (signed char, signed int);
extern signed short v11 (signed short, signed char, signed char, unsigned int);
extern signed short (*v12) (signed short, signed char, signed char, unsigned int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed int v15 (signed int, signed short, unsigned char);
extern signed int (*v16) (signed int, signed short, unsigned char);
extern unsigned short v17 (unsigned int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned short);
extern unsigned short v19 (signed int, unsigned char);
extern unsigned short (*v20) (signed int, unsigned char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned int v23 (unsigned int, signed char, unsigned int, signed short);
extern unsigned int (*v24) (unsigned int, signed char, unsigned int, signed short);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
signed char v27 (signed short, signed int);
signed char (*v28) (signed short, signed int) = v27;
extern unsigned int v29 (unsigned int, signed char);
extern unsigned int (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v129 = 5;
signed char v128 = -2;
unsigned char v127 = 3;

signed char v27 (signed short v130, signed int v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed int v134 = -3;
signed int v133 = -3;
unsigned short v132 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed char v135, signed short v136, signed int v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned short v140 = 1;
unsigned char v139 = 5;
signed short v138 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed char v141, unsigned int v142, unsigned short v143)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed short v146 = 2;
signed char v145 = -4;
unsigned int v144 = 2U;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v147;
signed char v148;
unsigned int v149;
signed short v150;
unsigned int v151;
v147 = 2U - 5U;
v148 = v141 + v141;
v149 = v144 + v142;
v150 = v146 - v146;
v151 = v23 (v147, v148, v149, v150);
history[history_index++] = (int)v151;
}
break;
case 3: 
{
unsigned int v152;
signed char v153;
unsigned int v154;
signed short v155;
unsigned int v156;
v152 = 4U - 4U;
v153 = 3 - v145;
v154 = v144 - 5U;
v155 = -2 - v146;
v156 = v23 (v152, v153, v154, v155);
history[history_index++] = (int)v156;
}
break;
case 5: 
{
signed short v157;
signed short v158;
signed int v159;
unsigned short v160;
unsigned char v161;
v157 = 2 + 2;
v158 = v146 - v146;
v159 = 0 + 1;
v160 = v143 - 7;
v161 = v5 (v157, v158, v159, v160);
history[history_index++] = (int)v161;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}
