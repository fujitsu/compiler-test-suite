#include <stdlib.h>
unsigned char v1 (unsigned char);
unsigned char (*v2) (unsigned char) = v1;
void v3 (unsigned int, signed char, signed int, signed short);
void (*v4) (unsigned int, signed char, signed int, signed short) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v7 (unsigned char, signed char);
extern unsigned char (*v8) (unsigned char, signed char);
void v9 (signed char, signed short, signed int);
void (*v10) (signed char, signed short, signed int) = v9;
signed short v11 (signed char, signed int, signed short, unsigned short);
signed short (*v12) (signed char, signed int, signed short, unsigned short) = v11;
extern void v13 (unsigned short, unsigned char);
extern void (*v14) (unsigned short, unsigned char);
extern unsigned int v15 (unsigned char, unsigned char, unsigned int);
extern unsigned int (*v16) (unsigned char, unsigned char, unsigned int);
extern signed short v17 (signed char, unsigned short, unsigned short, unsigned short);
extern signed short (*v18) (signed char, unsigned short, unsigned short, unsigned short);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
extern unsigned int v21 (unsigned char, unsigned short, unsigned char);
extern unsigned int (*v22) (unsigned char, unsigned short, unsigned char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
signed short v25 (unsigned char);
signed short (*v26) (unsigned char) = v25;
extern void v27 (signed int, signed short, unsigned short, signed char);
extern void (*v28) (signed int, signed short, unsigned short, signed char);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v106 = 0;
signed short v105 = -3;
unsigned char v104 = 2;

signed short v25 (unsigned char v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
signed int v110 = -4;
signed char v109 = -3;
unsigned short v108 = 0;
trace++;
switch (trace)
{
case 5: 
{
signed short v111;
v111 = v29 ();
history[history_index++] = (int)v111;
}
break;
case 7: 
{
signed short v112;
v112 = v29 ();
history[history_index++] = (int)v112;
}
break;
case 13: 
return 1;
case 15: 
return -3;
default: abort ();
}
}
}
}

signed short v11 (signed char v113, signed int v114, signed short v115, unsigned short v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned int v119 = 4U;
signed short v118 = -1;
signed int v117 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed char v120, signed short v121, signed int v122)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned char v125 = 5;
signed short v124 = 0;
signed char v123 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned int v126, signed char v127, signed int v128, signed short v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed char v132 = -1;
signed short v131 = -2;
signed int v130 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned char v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 4;
signed char v135 = -1;
unsigned short v134 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v137;
unsigned char v138;
v137 = v136 - v136;
v138 = 4 + 3;
v13 (v137, v138);
}
break;
case 18: 
return v133;
default: abort ();
}
}
}
}
