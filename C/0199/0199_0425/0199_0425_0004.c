#include <stdlib.h>
void v1 (signed char, signed char, signed int, unsigned short);
void (*v2) (signed char, signed char, signed int, unsigned short) = v1;
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (unsigned short, unsigned int, signed short, unsigned short);
extern void (*v10) (unsigned short, unsigned int, signed short, unsigned short);
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
signed short v15 (signed int, signed char, signed int);
signed short (*v16) (signed int, signed char, signed int) = v15;
extern unsigned int v17 (signed short, unsigned short, unsigned int, unsigned char);
extern unsigned int (*v18) (signed short, unsigned short, unsigned int, unsigned char);
signed char v19 (void);
signed char (*v20) (void) = v19;
extern signed char v23 (signed char, unsigned char, unsigned char, unsigned char);
extern signed char (*v24) (signed char, unsigned char, unsigned char, unsigned char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v119 = 3;
unsigned int v118 = 3U;
signed short v117 = -1;

signed char v19 (void)
{
{
for (;;) {
unsigned int v122 = 5U;
unsigned int v121 = 4U;
signed int v120 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed int v123, signed char v124, signed int v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed char v128 = -3;
unsigned int v127 = 4U;
unsigned int v126 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed char v129, signed char v130, signed int v131, unsigned short v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = 0;
unsigned int v134 = 7U;
unsigned char v133 = 6;
trace++;
switch (trace)
{
case 0: 
{
signed short v136;
unsigned short v137;
unsigned int v138;
unsigned char v139;
unsigned int v140;
v136 = 0 + -3;
v137 = 2 + 3;
v138 = 2U - v134;
v139 = v133 + v133;
v140 = v17 (v136, v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
