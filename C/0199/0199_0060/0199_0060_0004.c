#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed int v3 (signed char, signed int, signed int);
extern signed int (*v4) (signed char, signed int, signed int);
extern void v5 (unsigned char, signed short, unsigned short, unsigned int);
extern void (*v6) (unsigned char, signed short, unsigned short, unsigned int);
unsigned short v7 (signed int, signed int, signed short);
unsigned short (*v8) (signed int, signed int, signed short) = v7;
signed char v9 (void);
signed char (*v10) (void) = v9;
extern signed char v11 (unsigned short, unsigned int);
extern signed char (*v12) (unsigned short, unsigned int);
extern void v13 (signed short, signed char, signed short);
extern void (*v14) (signed short, signed char, signed short);
extern signed char v15 (unsigned char, signed int, unsigned char);
extern signed char (*v16) (unsigned char, signed int, unsigned char);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
unsigned char v21 (unsigned int, signed char, signed short);
unsigned char (*v22) (unsigned int, signed char, signed short) = v21;
extern unsigned short v23 (unsigned short, unsigned short, signed int, unsigned char);
extern unsigned short (*v24) (unsigned short, unsigned short, signed int, unsigned char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (unsigned short, signed char, signed int, unsigned short);
extern unsigned char (*v28) (unsigned short, signed char, signed int, unsigned short);
extern void v29 (unsigned char, signed int, unsigned short, signed int);
extern void (*v30) (unsigned char, signed int, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v127 = -3;
signed char v126 = -3;
unsigned int v125 = 6U;

unsigned char v21 (unsigned int v128, signed char v129, signed short v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed char v133 = -1;
signed char v132 = -1;
unsigned short v131 = 4;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned short v136 = 0;
unsigned short v135 = 3;
unsigned short v134 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
unsigned char v139 = 1;
signed short v138 = 2;
signed char v137 = -3;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v140;
unsigned short v141;
signed int v142;
unsigned char v143;
unsigned short v144;
v140 = 1 - 3;
v141 = 5 - 3;
v142 = -4 - -4;
v143 = 5 + v139;
v144 = v23 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 5: 
{
unsigned char v145;
unsigned char v146;
v145 = v139 - 4;
v146 = v19 (v145);
history[history_index++] = (int)v146;
}
break;
case 15: 
return -1;
default: abort ();
}
}
}
}

unsigned short v7 (signed int v147, signed int v148, signed short v149)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
signed short v152 = -1;
signed int v151 = -3;
unsigned char v150 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
