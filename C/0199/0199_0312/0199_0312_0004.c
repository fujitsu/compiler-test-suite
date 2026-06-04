#include <stdlib.h>
unsigned char v1 (signed char, signed short, unsigned short);
unsigned char (*v2) (signed char, signed short, unsigned short) = v1;
extern void v3 (signed int, signed char, signed char);
extern void (*v4) (signed int, signed char, signed char);
extern signed int v5 (unsigned char, signed char, signed int);
extern signed int (*v6) (unsigned char, signed char, signed int);
extern unsigned short v7 (signed short, signed char);
extern unsigned short (*v8) (signed short, signed char);
extern unsigned char v9 (signed int, unsigned short, unsigned short);
extern unsigned char (*v10) (signed int, unsigned short, unsigned short);
void v11 (unsigned int, signed int);
void (*v12) (unsigned int, signed int) = v11;
extern signed int v13 (unsigned int, unsigned char);
extern signed int (*v14) (unsigned int, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned short v17 (signed char, signed short, unsigned short);
extern unsigned short (*v18) (signed char, signed short, unsigned short);
extern signed short v19 (signed char);
extern signed short (*v20) (signed char);
void v21 (signed char, signed short);
void (*v22) (signed char, signed short) = v21;
extern signed int v23 (unsigned char, unsigned int, unsigned int);
extern signed int (*v24) (unsigned char, unsigned int, unsigned int);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern signed int v27 (signed short, unsigned char, signed char);
extern signed int (*v28) (signed short, unsigned char, signed char);
unsigned short v29 (unsigned int, unsigned short, unsigned char);
unsigned short (*v30) (unsigned int, unsigned short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v122 = -4;
unsigned int v121 = 0U;
unsigned char v120 = 4;

unsigned short v29 (unsigned int v123, unsigned short v124, unsigned char v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = -3;
signed int v127 = -4;
signed int v126 = 2;
trace++;
switch (trace)
{
case 5: 
return 2;
case 7: 
{
unsigned int v129;
unsigned short v130;
unsigned char v131;
unsigned short v132;
v129 = v123 + 4U;
v130 = 1 - v124;
v131 = v125 + v125;
v132 = v29 (v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 8: 
{
unsigned int v133;
unsigned short v134;
unsigned char v135;
unsigned short v136;
v133 = v123 + 4U;
v134 = v124 - v124;
v135 = 5 + v125;
v136 = v29 (v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 9: 
{
unsigned int v137;
unsigned short v138;
unsigned char v139;
unsigned short v140;
v137 = v123 - 3U;
v138 = 7 - 1;
v139 = 1 + 2;
v140 = v29 (v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 10: 
return 2;
case 11: 
return v124;
case 12: 
return v124;
case 13: 
return 0;
default: abort ();
}
}
}
}

void v21 (signed char v141, signed short v142)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned int v145 = 5U;
unsigned int v144 = 5U;
signed int v143 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned int v146, signed int v147)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
unsigned int v150 = 5U;
signed char v149 = 3;
unsigned int v148 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed char v151, signed short v152, unsigned short v153)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
unsigned char v156 = 6;
unsigned int v155 = 4U;
signed short v154 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v157;
signed char v158;
signed int v159;
signed int v160;
v157 = 5 + 0;
v158 = 0 - 2;
v159 = 3 + -3;
v160 = v5 (v157, v158, v159);
history[history_index++] = (int)v160;
}
break;
case 16: 
return 4;
default: abort ();
}
}
}
}
