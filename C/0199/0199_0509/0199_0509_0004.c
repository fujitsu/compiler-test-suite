#include <stdlib.h>
unsigned char v1 (signed short, unsigned char, signed char);
unsigned char (*v2) (signed short, unsigned char, signed char) = v1;
static void v3 (signed short);
static void (*v4) (signed short) = v3;
extern unsigned short v5 (signed char, signed short);
extern unsigned short (*v6) (signed char, signed short);
extern unsigned char v7 (signed int, signed char, signed char, signed short);
extern unsigned char (*v8) (signed int, signed char, signed char, signed short);
extern unsigned char v9 (unsigned char, signed short, signed char, signed short);
extern unsigned char (*v10) (unsigned char, signed short, signed char, signed short);
extern signed int v11 (signed short, unsigned char, unsigned short, unsigned short);
extern signed int (*v12) (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned int v13 (unsigned char, signed int, signed int);
extern unsigned int (*v14) (unsigned char, signed int, signed int);
extern signed int v15 (unsigned short);
extern signed int (*v16) (unsigned short);
extern unsigned short v17 (unsigned int);
extern unsigned short (*v18) (unsigned int);
extern signed char v19 (signed int, unsigned int, unsigned int);
extern signed char (*v20) (signed int, unsigned int, unsigned int);
extern unsigned char v21 (signed char, unsigned short, signed char);
extern unsigned char (*v22) (signed char, unsigned short, signed char);
unsigned char v23 (signed short);
unsigned char (*v24) (signed short) = v23;
extern signed short v25 (signed int, signed char);
extern signed short (*v26) (signed int, signed char);
extern void v27 (unsigned char, signed int, unsigned short);
extern void (*v28) (unsigned char, signed int, unsigned short);
extern signed int v29 (unsigned short);
extern signed int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v129 = 3;
signed int v128 = 3;
unsigned int v127 = 5U;

unsigned char v23 (signed short v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
signed short v133 = 2;
signed int v132 = 1;
unsigned short v131 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v3 (signed short v134)
{
history[history_index++] = (int)v134;
{
for (;;) {
signed int v137 = -4;
unsigned char v136 = 2;
unsigned short v135 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v138;
unsigned short v139;
signed char v140;
unsigned char v141;
v138 = 3 + 2;
v139 = 2 + 5;
v140 = 0 - -2;
v141 = v21 (v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 3: 
return;
default: abort ();
}
}
}
}

unsigned char v1 (signed short v142, unsigned char v143, signed char v144)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed int v147 = -2;
signed char v146 = -4;
unsigned char v145 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed short v148;
v148 = -4 - v142;
v3 (v148);
}
break;
case 4: 
{
signed char v149;
signed short v150;
unsigned short v151;
v149 = 0 + 0;
v150 = v142 + v142;
v151 = v5 (v149, v150);
history[history_index++] = (int)v151;
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}
