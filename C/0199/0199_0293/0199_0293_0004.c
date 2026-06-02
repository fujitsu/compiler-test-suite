#include <stdlib.h>
extern unsigned char v1 (unsigned short);
extern unsigned char (*v2) (unsigned short);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (unsigned char, signed char);
extern unsigned int (*v6) (unsigned char, signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (signed int);
extern void (*v10) (signed int);
unsigned int v11 (signed short, signed char, signed char);
unsigned int (*v12) (signed short, signed char, signed char) = v11;
extern signed int v13 (signed short, signed char, unsigned char);
extern signed int (*v14) (signed short, signed char, unsigned char);
extern signed char v15 (signed short, unsigned char, signed int);
extern signed char (*v16) (signed short, unsigned char, signed int);
extern unsigned char v17 (unsigned int, signed short, unsigned char, signed short);
extern unsigned char (*v18) (unsigned int, signed short, unsigned char, signed short);
extern void v19 (signed int, unsigned char, signed short, unsigned int);
extern void (*v20) (signed int, unsigned char, signed short, unsigned int);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
unsigned int v23 (signed char, unsigned char);
unsigned int (*v24) (signed char, unsigned char) = v23;
extern unsigned char v25 (unsigned int, unsigned int);
extern unsigned char (*v26) (unsigned int, unsigned int);
unsigned char v27 (unsigned short, signed int, unsigned short);
unsigned char (*v28) (unsigned short, signed int, unsigned short) = v27;
static unsigned int v29 (unsigned int, unsigned char);
static unsigned int (*v30) (unsigned int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v122 = 2;
signed short v121 = 1;
signed short v120 = 0;

static unsigned int v29 (unsigned int v123, unsigned char v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 5;
signed int v126 = -1;
signed char v125 = -4;
trace++;
switch (trace)
{
case 9: 
return v123;
default: abort ();
}
}
}
}

unsigned char v27 (unsigned short v128, signed int v129, unsigned short v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned short v133 = 4;
unsigned int v132 = 6U;
unsigned char v131 = 2;
trace++;
switch (trace)
{
case 6: 
return 5;
case 8: 
{
unsigned int v134;
unsigned char v135;
unsigned int v136;
v134 = v132 - v132;
v135 = v131 - 7;
v136 = v29 (v134, v135);
history[history_index++] = (int)v136;
}
break;
case 10: 
return v131;
default: abort ();
}
}
}
}

unsigned int v23 (signed char v137, unsigned char v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed short v141 = 0;
signed int v140 = 1;
unsigned int v139 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed short v142, signed char v143, signed char v144)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed char v147 = -3;
signed char v146 = -4;
signed char v145 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
