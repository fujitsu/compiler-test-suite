#include <stdlib.h>
extern unsigned int v1 (signed char);
extern unsigned int (*v2) (signed char);
extern unsigned int v3 (signed int, unsigned int, signed short);
extern unsigned int (*v4) (signed int, unsigned int, signed short);
unsigned char v5 (unsigned int, unsigned char);
unsigned char (*v6) (unsigned int, unsigned char) = v5;
signed int v7 (signed short, signed int, signed short, signed short);
signed int (*v8) (signed short, signed int, signed short, signed short) = v7;
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern unsigned char v11 (signed char, unsigned int, unsigned short, signed short);
extern unsigned char (*v12) (signed char, unsigned int, unsigned short, signed short);
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
signed short v15 (void);
signed short (*v16) (void) = v15;
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
extern unsigned short v21 (signed short, signed int);
extern unsigned short (*v22) (signed short, signed int);
signed char v25 (unsigned char);
signed char (*v26) (unsigned char) = v25;
extern signed short v27 (signed char, signed char, unsigned short, unsigned short);
extern signed short (*v28) (signed char, signed char, unsigned short, unsigned short);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v112 = 3;
unsigned char v111 = 7;
unsigned char v110 = 5;

void v29 (void)
{
{
for (;;) {
unsigned char v115 = 6;
signed char v114 = -3;
unsigned int v113 = 3U;
trace++;
switch (trace)
{
case 2: 
{
signed short v116;
signed int v117;
unsigned short v118;
v116 = -4 + 0;
v117 = -1 - -3;
v118 = v21 (v116, v117);
history[history_index++] = (int)v118;
}
break;
case 18: 
return;
default: abort ();
}
}
}
}

signed char v25 (unsigned char v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
signed char v122 = 0;
unsigned int v121 = 4U;
unsigned char v120 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
unsigned short v125 = 7;
signed int v124 = -2;
unsigned short v123 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed short v126, signed int v127, signed short v128, signed short v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned short v132 = 1;
signed short v131 = -3;
signed short v130 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v133, unsigned char v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed int v137 = -1;
unsigned char v136 = 2;
unsigned int v135 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
