#include <stdlib.h>
extern signed char v1 (signed char, unsigned short, signed char, unsigned char);
extern signed char (*v2) (signed char, unsigned short, signed char, unsigned char);
extern unsigned short v3 (signed char, signed char);
extern unsigned short (*v4) (signed char, signed char);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (unsigned int);
extern signed int (*v8) (unsigned int);
extern unsigned char v9 (signed short, unsigned short);
extern unsigned char (*v10) (signed short, unsigned short);
extern void v11 (signed int);
extern void (*v12) (signed int);
unsigned char v13 (signed int, unsigned int, signed char, signed short);
unsigned char (*v14) (signed int, unsigned int, signed char, signed short) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed int v17 (unsigned char, unsigned int, unsigned char);
extern signed int (*v18) (unsigned char, unsigned int, unsigned char);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned char v23 (unsigned char, signed short, signed short, unsigned int);
extern unsigned char (*v24) (unsigned char, signed short, signed short, unsigned int);
extern signed int v25 (unsigned short, signed char);
extern signed int (*v26) (unsigned short, signed char);
unsigned int v27 (unsigned int, unsigned int, signed char);
unsigned int (*v28) (unsigned int, unsigned int, signed char) = v27;
extern signed char v29 (signed char, signed char, signed char, signed int);
extern signed char (*v30) (signed char, signed char, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v120 = -3;
signed char v119 = 0;
signed short v118 = 0;

unsigned int v27 (unsigned int v121, unsigned int v122, signed char v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed short v126 = 1;
unsigned short v125 = 3;
unsigned int v124 = 7U;
trace++;
switch (trace)
{
case 2: 
{
signed char v127;
signed char v128;
signed char v129;
signed int v130;
signed char v131;
v127 = 1 - v123;
v128 = v123 + 3;
v129 = -2 + -2;
v130 = 0 + -2;
v131 = v29 (v127, v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 4: 
{
signed char v132;
signed char v133;
signed char v134;
signed int v135;
signed char v136;
v132 = v123 + v123;
v133 = -2 + 1;
v134 = v123 + v123;
v135 = 1 + -4;
v136 = v29 (v132, v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 6: 
{
signed char v137;
signed char v138;
signed char v139;
signed int v140;
signed char v141;
v137 = -2 + -1;
v138 = -3 - 1;
v139 = v123 - v123;
v140 = -4 - -2;
v141 = v29 (v137, v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 8: 
{
signed char v142;
signed char v143;
signed char v144;
signed int v145;
signed char v146;
v142 = -1 + -3;
v143 = 3 + 2;
v144 = -3 + v123;
v145 = 1 - -2;
v146 = v29 (v142, v143, v144, v145);
history[history_index++] = (int)v146;
}
break;
case 10: 
{
signed char v147;
signed char v148;
signed char v149;
signed int v150;
signed char v151;
v147 = -4 - v123;
v148 = -1 + v123;
v149 = v123 - 0;
v150 = 2 - -2;
v151 = v29 (v147, v148, v149, v150);
history[history_index++] = (int)v151;
}
break;
case 12: 
return v124;
default: abort ();
}
}
}
}

unsigned char v13 (signed int v152, unsigned int v153, signed char v154, signed short v155)
{
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
history[history_index++] = (int)v155;
{
for (;;) {
signed int v158 = -1;
signed int v157 = -1;
unsigned char v156 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
