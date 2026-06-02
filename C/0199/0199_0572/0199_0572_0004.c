#include <stdlib.h>
unsigned int v1 (unsigned short, signed short, unsigned char);
unsigned int (*v2) (unsigned short, signed short, unsigned char) = v1;
static unsigned short v3 (unsigned char, signed int);
static unsigned short (*v4) (unsigned char, signed int) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
signed short v7 (signed int, unsigned char, signed short, unsigned int);
signed short (*v8) (signed int, unsigned char, signed short, unsigned int) = v7;
extern signed char v9 (unsigned short);
extern signed char (*v10) (unsigned short);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed short v13 (signed char, unsigned short, unsigned int, unsigned int);
extern signed short (*v14) (signed char, unsigned short, unsigned int, unsigned int);
extern unsigned char v15 (signed int, signed char, signed short);
extern unsigned char (*v16) (signed int, signed char, signed short);
extern signed short v17 (unsigned int, signed char, signed short, unsigned char);
extern signed short (*v18) (unsigned int, signed char, signed short, unsigned char);
extern unsigned char v19 (signed short, unsigned short, signed int, unsigned char);
extern unsigned char (*v20) (signed short, unsigned short, signed int, unsigned char);
extern unsigned short v23 (signed char, signed short);
extern unsigned short (*v24) (signed char, signed short);
extern unsigned int v25 (signed int, signed int);
extern unsigned int (*v26) (signed int, signed int);
extern signed short v27 (unsigned int, unsigned int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned int, unsigned short);
extern unsigned char v29 (unsigned short, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v133 = -2;
signed short v132 = 2;
signed short v131 = -3;

signed short v7 (signed int v134, unsigned char v135, signed short v136, unsigned int v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = 1;
unsigned short v139 = 1;
signed char v138 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v3 (unsigned char v141, signed int v142)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed short v145 = 2;
signed char v144 = 2;
unsigned char v143 = 4;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v146, signed short v147, unsigned char v148)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
signed char v151 = -3;
unsigned int v150 = 6U;
unsigned int v149 = 4U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v152;
signed int v153;
unsigned short v154;
v152 = v148 + 4;
v153 = -4 - -3;
v154 = v3 (v152, v153);
history[history_index++] = (int)v154;
}
break;
case 2: 
{
signed int v155;
signed int v156;
unsigned int v157;
v155 = 2 + -4;
v156 = 1 - 1;
v157 = v25 (v155, v156);
history[history_index++] = (int)v157;
}
break;
case 4: 
{
signed char v158;
unsigned short v159;
unsigned int v160;
unsigned int v161;
signed short v162;
v158 = -2 + -4;
v159 = 4 - 1;
v160 = v149 + v150;
v161 = v149 - v149;
v162 = v13 (v158, v159, v160, v161);
history[history_index++] = (int)v162;
}
break;
case 14: 
return v150;
default: abort ();
}
}
}
}
