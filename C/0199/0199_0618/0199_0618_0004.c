#include <stdlib.h>
extern signed short v1 (signed int, unsigned short, signed char);
extern signed short (*v2) (signed int, unsigned short, signed char);
extern void v3 (signed int, signed char, signed char, unsigned char);
extern void (*v4) (signed int, signed char, signed char, unsigned char);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern signed short v7 (unsigned int, unsigned int, unsigned int);
extern signed short (*v8) (unsigned int, unsigned int, unsigned int);
unsigned int v9 (signed short);
unsigned int (*v10) (signed short) = v9;
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
extern void v15 (unsigned short, unsigned char, signed char);
extern void (*v16) (unsigned short, unsigned char, signed char);
extern unsigned int v17 (signed char, signed char, unsigned short);
extern unsigned int (*v18) (signed char, signed char, unsigned short);
unsigned char v19 (signed char, signed char, unsigned int, unsigned short);
unsigned char (*v20) (signed char, signed char, unsigned int, unsigned short) = v19;
extern unsigned int v23 (signed char, unsigned short);
extern unsigned int (*v24) (signed char, unsigned short);
extern signed int v25 (signed char, unsigned char);
extern signed int (*v26) (signed char, unsigned char);
extern unsigned char v27 (unsigned int, signed int, signed int, unsigned int);
extern unsigned char (*v28) (unsigned int, signed int, signed int, unsigned int);
extern unsigned short v29 (unsigned int, signed int, unsigned int);
extern unsigned short (*v30) (unsigned int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v130 = 7U;
unsigned short v129 = 0;
unsigned short v128 = 6;

unsigned char v19 (signed char v131, signed char v132, unsigned int v133, unsigned short v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed char v137 = 3;
signed int v136 = -4;
signed int v135 = -1;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v138;
signed int v139;
signed int v140;
unsigned int v141;
unsigned char v142;
v138 = 5U + v133;
v139 = v136 + -1;
v140 = v136 + v136;
v141 = v133 + 6U;
v142 = v27 (v138, v139, v140, v141);
history[history_index++] = (int)v142;
}
break;
case 6: 
{
signed char v143;
unsigned short v144;
unsigned int v145;
v143 = -3 - 1;
v144 = v134 - v134;
v145 = v23 (v143, v144);
history[history_index++] = (int)v145;
}
break;
case 8: 
{
signed char v146;
signed char v147;
unsigned short v148;
unsigned int v149;
v146 = v132 + v137;
v147 = -2 - v137;
v148 = 3 + 5;
v149 = v17 (v146, v147, v148);
history[history_index++] = (int)v149;
}
break;
case 10: 
{
signed char v150;
signed char v151;
unsigned short v152;
unsigned int v153;
v150 = v131 - v132;
v151 = -4 + 3;
v152 = 3 + v134;
v153 = v17 (v150, v151, v152);
history[history_index++] = (int)v153;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

unsigned int v9 (signed short v154)
{
history[history_index++] = (int)v154;
{
for (;;) {
unsigned short v157 = 1;
signed int v156 = 0;
unsigned char v155 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
unsigned int v160 = 4U;
unsigned char v159 = 6;
unsigned int v158 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
