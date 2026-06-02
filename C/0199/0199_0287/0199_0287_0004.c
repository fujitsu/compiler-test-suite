#include <stdlib.h>
extern signed char v1 (unsigned int, unsigned int, signed char, signed int);
extern signed char (*v2) (unsigned int, unsigned int, signed char, signed int);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
signed short v5 (signed int, signed short);
signed short (*v6) (signed int, signed short) = v5;
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
unsigned char v11 (signed char);
unsigned char (*v12) (signed char) = v11;
extern signed int v13 (signed int);
extern signed int (*v14) (signed int);
extern unsigned short v15 (unsigned int, signed short, unsigned short, signed char);
extern unsigned short (*v16) (unsigned int, signed short, unsigned short, signed char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned char v19 (signed int, unsigned char, signed char, unsigned int);
extern unsigned char (*v20) (signed int, unsigned char, signed char, unsigned int);
extern signed int v21 (signed int, signed char, unsigned char, unsigned char);
extern signed int (*v22) (signed int, signed char, unsigned char, unsigned char);
unsigned int v23 (unsigned char, unsigned int, unsigned short, signed int);
unsigned int (*v24) (unsigned char, unsigned int, unsigned short, signed int) = v23;
extern signed short v25 (signed short, unsigned char, signed short, signed int);
extern signed short (*v26) (signed short, unsigned char, signed short, signed int);
extern void v27 (signed short, signed char, signed int);
extern void (*v28) (signed short, signed char, signed int);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v130 = 3U;
unsigned char v129 = 6;
signed char v128 = 1;

unsigned int v23 (unsigned char v131, unsigned int v132, unsigned short v133, signed int v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = 3;
unsigned short v136 = 6;
unsigned short v135 = 2;
trace++;
switch (trace)
{
case 3: 
{
signed int v138;
signed char v139;
unsigned char v140;
unsigned char v141;
signed int v142;
v138 = v134 - 0;
v139 = -4 + 3;
v140 = v131 - v131;
v141 = 5 + v131;
v142 = v21 (v138, v139, v140, v141);
history[history_index++] = (int)v142;
}
break;
case 5: 
{
signed short v143;
signed char v144;
signed int v145;
v143 = 3 + v137;
v144 = 0 - 2;
v145 = -2 - 2;
v27 (v143, v144, v145);
}
break;
case 7: 
{
signed short v146;
signed char v147;
signed int v148;
v146 = v137 - 1;
v147 = 0 + -2;
v148 = v134 - v134;
v27 (v146, v147, v148);
}
break;
case 9: 
{
signed short v149;
signed char v150;
signed int v151;
v149 = -1 - v137;
v150 = 2 - 0;
v151 = v134 + v134;
v27 (v149, v150, v151);
}
break;
case 11: 
return v132;
case 13: 
return 0U;
default: abort ();
}
}
}
}

unsigned char v11 (signed char v152)
{
history[history_index++] = (int)v152;
{
for (;;) {
signed short v155 = -4;
unsigned short v154 = 0;
unsigned char v153 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed int v156, signed short v157)
{
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
{
for (;;) {
signed char v160 = 2;
signed short v159 = 0;
signed int v158 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
