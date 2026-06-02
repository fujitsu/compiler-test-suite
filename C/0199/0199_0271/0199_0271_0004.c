#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern void v3 (signed short);
extern void (*v4) (signed short);
signed char v5 (signed char, signed char);
signed char (*v6) (signed char, signed char) = v5;
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern unsigned int v9 (unsigned int);
extern unsigned int (*v10) (unsigned int);
unsigned short v11 (unsigned int, unsigned char);
unsigned short (*v12) (unsigned int, unsigned char) = v11;
signed char v13 (signed short, signed int, signed char, signed char);
signed char (*v14) (signed short, signed int, signed char, signed char) = v13;
extern unsigned int v15 (unsigned char, unsigned int, unsigned int);
extern unsigned int (*v16) (unsigned char, unsigned int, unsigned int);
extern signed short v17 (unsigned short, signed int, signed int);
extern signed short (*v18) (unsigned short, signed int, signed int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
void v21 (signed char, signed short, signed int, signed char);
void (*v22) (signed char, signed short, signed int, signed char) = v21;
extern unsigned short v23 (signed char, unsigned char, signed int, unsigned char);
extern unsigned short (*v24) (signed char, unsigned char, signed int, unsigned char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v115 = 1;
signed int v114 = 2;
signed int v113 = -3;

void v21 (signed char v116, signed short v117, signed int v118, signed char v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 5;
signed char v121 = 3;
unsigned char v120 = 4;
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

signed char v13 (signed short v123, signed int v124, signed char v125, signed char v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed char v129 = -2;
signed int v128 = 3;
unsigned short v127 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v130, unsigned char v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned short v134 = 7;
signed short v133 = 0;
signed char v132 = -3;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v135;
v135 = v1 ();
history[history_index++] = (int)v135;
}
break;
case 13: 
return 5;
default: abort ();
}
}
}
}

signed char v5 (signed char v136, signed char v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = -4;
unsigned short v139 = 3;
signed short v138 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
