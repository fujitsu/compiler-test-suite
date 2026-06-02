#include <stdlib.h>
extern unsigned char v3 (unsigned int, signed char, signed short);
extern unsigned char (*v4) (unsigned int, signed char, signed short);
extern signed short v5 (signed int, signed short, unsigned char);
extern signed short (*v6) (signed int, signed short, unsigned char);
extern signed short v7 (unsigned char, unsigned char, signed char);
extern signed short (*v8) (unsigned char, unsigned char, signed char);
signed char v9 (signed int, signed char, unsigned short, signed char);
signed char (*v10) (signed int, signed char, unsigned short, signed char) = v9;
extern unsigned int v13 (unsigned int, signed char, signed short);
extern unsigned int (*v14) (unsigned int, signed char, signed short);
signed char v15 (signed int, unsigned char);
signed char (*v16) (signed int, unsigned char) = v15;
extern unsigned int v17 (unsigned char, unsigned char, signed short, signed short);
extern unsigned int (*v18) (unsigned char, unsigned char, signed short, signed short);
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
extern unsigned int v21 (signed short);
extern unsigned int (*v22) (signed short);
extern signed short v23 (unsigned short);
extern signed short (*v24) (unsigned short);
extern void v25 (unsigned short, unsigned short);
extern void (*v26) (unsigned short, unsigned short);
signed char v27 (signed char, unsigned char);
signed char (*v28) (signed char, unsigned char) = v27;
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v114 = 1U;
unsigned int v113 = 6U;
unsigned char v112 = 1;

signed char v29 (void)
{
{
for (;;) {
signed short v117 = 3;
unsigned char v116 = 4;
signed int v115 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v27 (signed char v118, unsigned char v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = -4;
unsigned char v121 = 6;
signed short v120 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed int v123, unsigned char v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 5;
signed char v126 = -2;
signed short v125 = -3;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v128;
unsigned short v129;
v128 = v127 + 0;
v129 = v127 + 0;
v25 (v128, v129);
}
break;
case 3: 
{
unsigned short v130;
unsigned short v131;
v130 = v127 - v127;
v131 = 2 + v127;
v25 (v130, v131);
}
break;
case 5: 
{
unsigned short v132;
unsigned short v133;
v132 = v127 + 7;
v133 = v127 + 3;
v25 (v132, v133);
}
break;
case 7: 
{
unsigned short v134;
unsigned short v135;
v134 = v127 - v127;
v135 = 2 + 7;
v25 (v134, v135);
}
break;
case 9: 
return -2;
default: abort ();
}
}
}
}

signed char v9 (signed int v136, signed char v137, unsigned short v138, signed char v139)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned int v142 = 7U;
unsigned short v141 = 4;
unsigned int v140 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
