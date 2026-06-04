#include <stdlib.h>
extern void v1 (signed int, signed char);
extern void (*v2) (signed int, signed char);
signed short v3 (void);
signed short (*v4) (void) = v3;
extern void v5 (signed int);
extern void (*v6) (signed int);
void v7 (signed int, signed int, unsigned short, signed char);
void (*v8) (signed int, signed int, unsigned short, signed char) = v7;
extern unsigned char v9 (unsigned short, signed short, signed int, signed char);
extern unsigned char (*v10) (unsigned short, signed short, signed int, signed char);
extern signed char v11 (signed int, signed int, signed int);
extern signed char (*v12) (signed int, signed int, signed int);
extern signed int v13 (signed char, unsigned int, signed int, unsigned char);
extern signed int (*v14) (signed char, unsigned int, signed int, unsigned char);
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
extern unsigned short v17 (signed short, signed int);
extern unsigned short (*v18) (signed short, signed int);
void v19 (unsigned int, unsigned short, signed char);
void (*v20) (unsigned int, unsigned short, signed char) = v19;
extern unsigned char v21 (unsigned short, signed char);
extern unsigned char (*v22) (unsigned short, signed char);
unsigned int v23 (unsigned int, unsigned short, unsigned short, signed short);
unsigned int (*v24) (unsigned int, unsigned short, unsigned short, signed short) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (unsigned short, signed char, signed char, unsigned int);
extern void (*v28) (unsigned short, signed char, signed char, unsigned int);
extern void v29 (unsigned short, signed char, unsigned int, signed int);
extern void (*v30) (unsigned short, signed char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v120 = 2;
signed char v119 = -1;
signed short v118 = -3;

unsigned int v23 (unsigned int v121, unsigned short v122, unsigned short v123, signed short v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 6;
unsigned int v126 = 0U;
signed char v125 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned int v128, unsigned short v129, signed char v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned char v133 = 1;
unsigned int v132 = 3U;
unsigned int v131 = 4U;
trace++;
switch (trace)
{
case 5: 
return;
default: abort ();
}
}
}
}

void v7 (signed int v134, signed int v135, unsigned short v136, signed char v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed int v140 = 3;
signed int v139 = 0;
signed short v138 = -4;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

signed short v3 (void)
{
{
for (;;) {
unsigned short v143 = 0;
signed int v142 = -4;
unsigned int v141 = 3U;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v144;
signed char v145;
unsigned int v146;
signed int v147;
v144 = 2 + v143;
v145 = -3 + 0;
v146 = 4U + v141;
v147 = v142 + v142;
v29 (v144, v145, v146, v147);
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}
