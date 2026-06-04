#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned short);
extern signed short (*v2) (unsigned short, unsigned short);
extern signed int v3 (signed char, signed char, unsigned int);
extern signed int (*v4) (signed char, signed char, unsigned int);
extern unsigned short v5 (unsigned int, signed short, signed int, unsigned int);
extern unsigned short (*v6) (unsigned int, signed short, signed int, unsigned int);
unsigned char v7 (signed int, signed int, signed int, signed char);
unsigned char (*v8) (signed int, signed int, signed int, signed char) = v7;
unsigned short v9 (unsigned short, signed short);
unsigned short (*v10) (unsigned short, signed short) = v9;
static signed char v11 (signed char, signed char, signed char);
static signed char (*v12) (signed char, signed char, signed char) = v11;
extern unsigned char v13 (signed short, unsigned char, unsigned char);
extern unsigned char (*v14) (signed short, unsigned char, unsigned char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned int v17 (signed int, signed char, signed int, unsigned char);
extern unsigned int (*v18) (signed int, signed char, signed int, unsigned char);
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
extern signed char v21 (unsigned int);
extern signed char (*v22) (unsigned int);
extern unsigned char v23 (unsigned int, unsigned int, signed char, unsigned short);
extern unsigned char (*v24) (unsigned int, unsigned int, signed char, unsigned short);
extern void v25 (unsigned short, unsigned short);
extern void (*v26) (unsigned short, unsigned short);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern signed int v29 (unsigned short, unsigned char, unsigned char);
extern signed int (*v30) (unsigned short, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v119 = 1;
unsigned char v118 = 3;
signed int v117 = -4;

signed int v27 (void)
{
{
for (;;) {
signed short v122 = -1;
signed int v121 = 0;
signed char v120 = -4;
trace++;
switch (trace)
{
case 7: 
return 0;
case 9: 
return v121;
case 11: 
return v121;
default: abort ();
}
}
}
}

static signed char v11 (signed char v123, signed char v124, signed char v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned char v128 = 6;
unsigned int v127 = 1U;
signed char v126 = -3;
trace++;
switch (trace)
{
case 2: 
return -2;
case 4: 
{
signed short v129;
unsigned char v130;
unsigned char v131;
unsigned char v132;
v129 = 0 - 0;
v130 = v128 + v128;
v131 = v128 + v128;
v132 = v13 (v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 14: 
return v123;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v133, signed short v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned char v137 = 1;
signed int v136 = 2;
unsigned char v135 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed int v138, signed int v139, signed int v140, signed char v141)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned int v144 = 7U;
signed int v143 = 0;
unsigned int v142 = 7U;
trace++;
switch (trace)
{
case 1: 
{
signed char v145;
signed char v146;
signed char v147;
signed char v148;
v145 = -3 + 3;
v146 = v141 - 1;
v147 = v141 + v141;
v148 = v11 (v145, v146, v147);
history[history_index++] = (int)v148;
}
break;
case 3: 
{
signed char v149;
signed char v150;
signed char v151;
signed char v152;
v149 = -2 - 0;
v150 = v141 + 3;
v151 = v141 - -2;
v152 = v11 (v149, v150, v151);
history[history_index++] = (int)v152;
}
break;
case 15: 
return 7;
default: abort ();
}
}
}
}
