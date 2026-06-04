#include <stdlib.h>
signed short v1 (unsigned char);
signed short (*v2) (unsigned char) = v1;
extern signed char v3 (signed short, signed char, signed int, signed short);
extern signed char (*v4) (signed short, signed char, signed int, signed short);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern signed int v7 (unsigned char, unsigned char, unsigned short, signed short);
extern signed int (*v8) (unsigned char, unsigned char, unsigned short, signed short);
extern unsigned short v9 (unsigned char, signed char);
extern unsigned short (*v10) (unsigned char, signed char);
extern signed char v11 (unsigned int, unsigned int);
extern signed char (*v12) (unsigned int, unsigned int);
extern signed int v13 (unsigned short, unsigned int, signed char, signed char);
extern signed int (*v14) (unsigned short, unsigned int, signed char, signed char);
extern signed short v15 (unsigned short, unsigned short, signed short);
extern signed short (*v16) (unsigned short, unsigned short, signed short);
extern unsigned int v17 (unsigned short, unsigned short, unsigned char);
extern unsigned int (*v18) (unsigned short, unsigned short, unsigned char);
extern unsigned int v19 (signed int, unsigned char, signed int, unsigned int);
extern unsigned int (*v20) (signed int, unsigned char, signed int, unsigned int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
unsigned int v23 (unsigned int, signed short, unsigned short, signed char);
unsigned int (*v24) (unsigned int, signed short, unsigned short, signed char) = v23;
extern signed int v25 (signed short, unsigned short);
extern signed int (*v26) (signed short, unsigned short);
unsigned int v27 (signed short, signed int, unsigned short);
unsigned int (*v28) (signed short, signed int, unsigned short) = v27;
signed char v29 (unsigned char);
signed char (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v109 = 1;
signed short v108 = -3;
unsigned int v107 = 4U;

signed char v29 (unsigned char v110)
{
history[history_index++] = (int)v110;
{
for (;;) {
signed int v113 = 3;
unsigned char v112 = 5;
unsigned char v111 = 5;
trace++;
switch (trace)
{
case 8: 
return 2;
default: abort ();
}
}
}
}

unsigned int v27 (signed short v114, signed int v115, unsigned short v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = -3;
unsigned char v118 = 5;
signed short v117 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (unsigned int v120, signed short v121, unsigned short v122, signed char v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed char v126 = 3;
signed int v125 = -3;
unsigned short v124 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned char v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 7;
unsigned char v129 = 2;
signed short v128 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v131;
unsigned short v132;
v131 = v130 + v129;
v132 = v5 (v131);
history[history_index++] = (int)v132;
}
break;
case 2: 
{
unsigned char v133;
unsigned char v134;
unsigned short v135;
signed short v136;
signed int v137;
v133 = 7 - 1;
v134 = v127 + v130;
v135 = 2 + 0;
v136 = v128 - 0;
v137 = v7 (v133, v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 4: 
{
unsigned char v138;
unsigned short v139;
v138 = v127 - v129;
v139 = v5 (v138);
history[history_index++] = (int)v139;
}
break;
case 12: 
return v128;
default: abort ();
}
}
}
}
