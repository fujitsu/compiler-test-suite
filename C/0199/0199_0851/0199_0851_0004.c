#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned int v5 (unsigned short, unsigned short, unsigned char);
extern unsigned int (*v6) (unsigned short, unsigned short, unsigned char);
extern void v9 (unsigned int, unsigned int, unsigned short);
extern void (*v10) (unsigned int, unsigned int, unsigned short);
extern signed short v11 (unsigned int, unsigned int, unsigned short);
extern signed short (*v12) (unsigned int, unsigned int, unsigned short);
unsigned char v13 (unsigned short, signed int);
unsigned char (*v14) (unsigned short, signed int) = v13;
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
extern signed int v17 (unsigned short, unsigned char);
extern signed int (*v18) (unsigned short, unsigned char);
extern unsigned int v19 (unsigned short, unsigned char, unsigned int, signed short);
extern unsigned int (*v20) (unsigned short, unsigned char, unsigned int, signed short);
extern signed short v21 (unsigned int, unsigned int, unsigned short, unsigned int);
extern signed short (*v22) (unsigned int, unsigned int, unsigned short, unsigned int);
extern signed char v23 (signed int, signed char, signed char, signed char);
extern signed char (*v24) (signed int, signed char, signed char, signed char);
extern signed short v25 (signed char, unsigned int, signed int);
extern signed short (*v26) (signed char, unsigned int, signed int);
extern unsigned short v27 (unsigned char, signed short, unsigned char, unsigned short);
extern unsigned short (*v28) (unsigned char, signed short, unsigned char, unsigned short);
unsigned short v29 (unsigned char, signed int, unsigned char);
unsigned short (*v30) (unsigned char, signed int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v124 = 0;
unsigned char v123 = 6;
unsigned char v122 = 2;

unsigned short v29 (unsigned char v125, signed int v126, unsigned char v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed int v130 = 3;
unsigned short v129 = 2;
unsigned short v128 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v131, signed int v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned int v135 = 4U;
unsigned short v134 = 6;
signed short v133 = 1;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v136;
unsigned char v137;
unsigned int v138;
signed short v139;
unsigned int v140;
v136 = v134 + 6;
v137 = 2 - 5;
v138 = 6U + 5U;
v139 = -1 - v133;
v140 = v19 (v136, v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 4: 
{
unsigned short v141;
unsigned char v142;
unsigned int v143;
signed short v144;
unsigned int v145;
v141 = v131 - v134;
v142 = 1 + 1;
v143 = 4U - v135;
v144 = v133 + v133;
v145 = v19 (v141, v142, v143, v144);
history[history_index++] = (int)v145;
}
break;
case 6: 
{
unsigned short v146;
unsigned char v147;
unsigned int v148;
signed short v149;
unsigned int v150;
v146 = v131 - v131;
v147 = 4 + 4;
v148 = v135 + 5U;
v149 = v133 - v133;
v150 = v19 (v146, v147, v148, v149);
history[history_index++] = (int)v150;
}
break;
case 8: 
{
unsigned short v151;
unsigned char v152;
unsigned int v153;
signed short v154;
unsigned int v155;
v151 = v131 - v134;
v152 = 3 - 6;
v153 = v135 - 1U;
v154 = -2 + v133;
v155 = v19 (v151, v152, v153, v154);
history[history_index++] = (int)v155;
}
break;
case 10: 
{
unsigned short v156;
unsigned char v157;
unsigned int v158;
signed short v159;
unsigned int v160;
v156 = v131 - v131;
v157 = 2 + 3;
v158 = v135 - v135;
v159 = v133 - v133;
v160 = v19 (v156, v157, v158, v159);
history[history_index++] = (int)v160;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}
