#include <stdlib.h>
signed char v1 (unsigned char, signed short, signed char, signed char);
signed char (*v2) (unsigned char, signed short, signed char, signed char) = v1;
static signed char v3 (signed char, signed int, signed short, signed int);
static signed char (*v4) (signed char, signed int, signed short, signed int) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v9 (signed char, unsigned char, signed char);
extern unsigned short (*v10) (signed char, unsigned char, signed char);
extern void v11 (unsigned short, signed short);
extern void (*v12) (unsigned short, signed short);
extern void v13 (unsigned int, signed int);
extern void (*v14) (unsigned int, signed int);
extern unsigned int v15 (signed short, signed int);
extern unsigned int (*v16) (signed short, signed int);
extern unsigned short v17 (signed int);
extern unsigned short (*v18) (signed int);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (signed int);
extern void (*v22) (signed int);
extern unsigned short v23 (unsigned short, signed short);
extern unsigned short (*v24) (unsigned short, signed short);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
signed int v27 (unsigned short, signed int, signed short);
signed int (*v28) (unsigned short, signed int, signed short) = v27;
extern unsigned int v29 (unsigned short, signed char, signed int);
extern unsigned int (*v30) (unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v114 = 0;
unsigned int v113 = 2U;
signed int v112 = -1;

signed int v27 (unsigned short v115, signed int v116, signed short v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = 3;
signed short v119 = -2;
unsigned int v118 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v3 (signed char v121, signed int v122, signed short v123, signed int v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = -2;
unsigned short v126 = 2;
unsigned short v125 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed int v128;
v128 = v124 - 2;
v21 (v128);
}
break;
case 3: 
{
signed int v129;
v129 = -1 + v122;
v21 (v129);
}
break;
case 17: 
return v121;
default: abort ();
}
}
}
}

signed char v1 (unsigned char v130, signed short v131, signed char v132, signed char v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = 3;
unsigned int v135 = 1U;
signed char v134 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed char v137;
signed int v138;
signed short v139;
signed int v140;
signed char v141;
v137 = v134 - v132;
v138 = 0 - 0;
v139 = v131 + -2;
v140 = 0 - -2;
v141 = v3 (v137, v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 18: 
return v133;
default: abort ();
}
}
}
}
