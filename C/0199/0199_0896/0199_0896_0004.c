#include <stdlib.h>
extern void v1 (unsigned int, unsigned short, unsigned int);
extern void (*v2) (unsigned int, unsigned short, unsigned int);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed short v5 (signed short, unsigned char, signed int, unsigned int);
extern signed short (*v6) (signed short, unsigned char, signed int, unsigned int);
extern signed short v7 (signed int, unsigned short);
extern signed short (*v8) (signed int, unsigned short);
void v9 (unsigned int);
void (*v10) (unsigned int) = v9;
extern unsigned short v11 (unsigned char, signed char, unsigned int);
extern unsigned short (*v12) (unsigned char, signed char, unsigned int);
signed char v13 (signed char, signed char, signed int);
signed char (*v14) (signed char, signed char, signed int) = v13;
extern signed short v15 (unsigned char, signed int);
extern signed short (*v16) (unsigned char, signed int);
unsigned int v17 (unsigned short, unsigned short, unsigned char, signed int);
unsigned int (*v18) (unsigned short, unsigned short, unsigned char, signed int) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed short v21 (unsigned short, unsigned short);
extern signed short (*v22) (unsigned short, unsigned short);
extern unsigned int v23 (unsigned short, unsigned int, signed char, unsigned short);
extern unsigned int (*v24) (unsigned short, unsigned int, signed char, unsigned short);
extern void v25 (unsigned char, signed short, unsigned int);
extern void (*v26) (unsigned char, signed short, unsigned int);
extern void v27 (signed short);
extern void (*v28) (signed short);
unsigned char v29 (unsigned short, unsigned int, signed int);
unsigned char (*v30) (unsigned short, unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v126 = 4U;
signed short v125 = -1;
signed char v124 = -4;

unsigned char v29 (unsigned short v127, unsigned int v128, signed int v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 0U;
unsigned char v131 = 5;
signed int v130 = 2;
trace++;
switch (trace)
{
case 11: 
return v131;
default: abort ();
}
}
}
}

unsigned int v17 (unsigned short v133, unsigned short v134, unsigned char v135, signed int v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed char v139 = -4;
unsigned short v138 = 4;
unsigned int v137 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed char v140, signed char v141, signed int v142)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned short v145 = 0;
signed int v144 = -1;
signed short v143 = -3;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v146;
signed int v147;
signed short v148;
v146 = 0 - 2;
v147 = v142 + -4;
v148 = v15 (v146, v147);
history[history_index++] = (int)v148;
}
break;
case 15: 
return v141;
default: abort ();
}
}
}
}

void v9 (unsigned int v149)
{
history[history_index++] = (int)v149;
{
for (;;) {
signed char v152 = 2;
signed int v151 = 1;
unsigned short v150 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
