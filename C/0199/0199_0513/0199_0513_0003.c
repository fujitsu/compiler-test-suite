#include <stdlib.h>
unsigned char v1 (unsigned short);
unsigned char (*v2) (unsigned short) = v1;
extern void v3 (unsigned char, unsigned int, unsigned char, signed short);
extern void (*v4) (unsigned char, unsigned int, unsigned char, signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned int v7 (unsigned char, signed int, signed int);
extern unsigned int (*v8) (unsigned char, signed int, signed int);
extern signed char v9 (signed char, unsigned short);
extern signed char (*v10) (signed char, unsigned short);
extern signed short v11 (unsigned int, unsigned int, signed char, signed char);
extern signed short (*v12) (unsigned int, unsigned int, signed char, signed char);
extern signed short v13 (unsigned short, unsigned short);
extern signed short (*v14) (unsigned short, unsigned short);
signed char v15 (unsigned short);
signed char (*v16) (unsigned short) = v15;
extern signed int v17 (unsigned int, signed char, signed char, signed int);
extern signed int (*v18) (unsigned int, signed char, signed char, signed int);
extern unsigned short v19 (signed char, signed short, unsigned short, unsigned short);
extern unsigned short (*v20) (signed char, signed short, unsigned short, unsigned short);
extern signed short v21 (unsigned char, signed int, unsigned int, signed int);
extern signed short (*v22) (unsigned char, signed int, unsigned int, signed int);
void v23 (void);
void (*v24) (void) = v23;
signed int v25 (signed int, signed int, signed int);
signed int (*v26) (signed int, signed int, signed int) = v25;
extern unsigned int v29 (signed short, signed short);
extern unsigned int (*v30) (signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v118 = 0U;
unsigned short v117 = 2;
signed int v116 = 0;

signed int v25 (signed int v119, signed int v120, signed int v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed char v124 = -2;
unsigned char v123 = 7;
signed char v122 = -3;
trace++;
switch (trace)
{
case 5: 
return v121;
default: abort ();
}
}
}
}

void v23 (void)
{
{
for (;;) {
signed short v127 = 2;
unsigned short v126 = 2;
unsigned int v125 = 6U;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

signed char v15 (unsigned short v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
signed int v131 = 2;
signed char v130 = -4;
signed short v129 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v132)
{
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = 2;
signed short v134 = -1;
unsigned int v133 = 7U;
trace++;
switch (trace)
{
case 0: 
{
signed char v136;
signed short v137;
unsigned short v138;
unsigned short v139;
unsigned short v140;
v136 = 1 - 1;
v137 = -2 - v135;
v138 = 2 - 3;
v139 = v132 + v132;
v140 = v19 (v136, v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 16: 
return 2;
default: abort ();
}
}
}
}
