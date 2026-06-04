#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed short, signed short);
extern unsigned char (*v2) (unsigned char, signed short, signed short);
extern signed char v3 (unsigned int, signed int, signed int);
extern signed char (*v4) (unsigned int, signed int, signed int);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
signed short v7 (unsigned short, signed short);
signed short (*v8) (unsigned short, signed short) = v7;
extern unsigned int v9 (signed char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char);
extern void v11 (signed char, signed short, signed int);
extern void (*v12) (signed char, signed short, signed int);
signed int v13 (void);
signed int (*v14) (void) = v13;
unsigned short v15 (signed char, unsigned char, signed int, unsigned short);
unsigned short (*v16) (signed char, unsigned char, signed int, unsigned short) = v15;
extern signed char v17 (unsigned short, signed char, signed int);
extern signed char (*v18) (unsigned short, signed char, signed int);
extern unsigned short v19 (unsigned char, signed char, unsigned char);
extern unsigned short (*v20) (unsigned char, signed char, unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned int v25 (unsigned short, signed short, signed short, signed char);
extern unsigned int (*v26) (unsigned short, signed short, signed short, signed char);
extern unsigned short v27 (signed short, signed int, signed char, signed int);
extern unsigned short (*v28) (signed short, signed int, signed char, signed int);
extern signed int v29 (signed char, unsigned short, unsigned short, signed short);
extern signed int (*v30) (signed char, unsigned short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v122 = 1;
signed char v121 = -3;
unsigned int v120 = 6U;

unsigned short v15 (signed char v123, unsigned char v124, signed int v125, unsigned short v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed short v129 = -4;
signed short v128 = 0;
unsigned short v127 = 7;
trace++;
switch (trace)
{
case 7: 
return v127;
default: abort ();
}
}
}
}

signed int v13 (void)
{
{
for (;;) {
signed int v132 = -4;
unsigned short v131 = 3;
signed char v130 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed short v133;
signed int v134;
signed char v135;
signed int v136;
unsigned short v137;
v133 = -4 + -3;
v134 = v132 - -3;
v135 = v130 + -4;
v136 = 0 + 1;
v137 = v27 (v133, v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 5: 
return v132;
default: abort ();
}
}
}
}

signed short v7 (unsigned short v138, signed short v139)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed int v142 = 2;
signed int v141 = -4;
unsigned short v140 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
unsigned char v145 = 3;
signed char v144 = 0;
signed char v143 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
