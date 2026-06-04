#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
extern signed short v3 (void);
extern signed short (*v4) (void);
signed char v5 (unsigned char, unsigned short);
signed char (*v6) (unsigned char, unsigned short) = v5;
extern unsigned char v7 (signed char, signed short, signed int, unsigned int);
extern unsigned char (*v8) (signed char, signed short, signed int, unsigned int);
extern signed short v9 (unsigned short, unsigned short);
extern signed short (*v10) (unsigned short, unsigned short);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
signed char v13 (signed int, unsigned int, unsigned char, signed char);
signed char (*v14) (signed int, unsigned int, unsigned char, signed char) = v13;
extern unsigned short v15 (signed char, signed char);
extern unsigned short (*v16) (signed char, signed char);
extern void v17 (signed int, signed short, signed int);
extern void (*v18) (signed int, signed short, signed int);
signed short v19 (signed char, signed char, unsigned short);
signed short (*v20) (signed char, signed char, unsigned short) = v19;
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
extern void v23 (unsigned char, signed short);
extern void (*v24) (unsigned char, signed short);
extern signed short v25 (signed int, signed int);
extern signed short (*v26) (signed int, signed int);
extern unsigned int v27 (unsigned char, unsigned short);
extern unsigned int (*v28) (unsigned char, unsigned short);
unsigned char v29 (unsigned char, unsigned int);
unsigned char (*v30) (unsigned char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v115 = 5U;
signed char v114 = 0;
unsigned int v113 = 2U;

unsigned char v29 (unsigned char v116, unsigned int v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed char v120 = 2;
signed int v119 = -1;
unsigned short v118 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed char v121, signed char v122, unsigned short v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned int v126 = 6U;
signed short v125 = -4;
signed short v124 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed int v127, unsigned int v128, unsigned char v129, signed char v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = -3;
signed short v132 = 3;
signed short v131 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v134;
unsigned short v135;
unsigned int v136;
v134 = 3 + v129;
v135 = 3 + 5;
v136 = v27 (v134, v135);
history[history_index++] = (int)v136;
}
break;
case 3: 
{
signed int v137;
signed int v138;
signed short v139;
v137 = 0 - v133;
v138 = v127 - -1;
v139 = v25 (v137, v138);
history[history_index++] = (int)v139;
}
break;
case 5: 
return -4;
default: abort ();
}
}
}
}

signed char v5 (unsigned char v140, unsigned short v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed short v144 = -4;
signed char v143 = -4;
signed short v142 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
