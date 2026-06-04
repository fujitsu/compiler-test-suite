#include <stdlib.h>
void v1 (signed char, unsigned short);
void (*v2) (signed char, unsigned short) = v1;
signed short v3 (signed char, signed char, unsigned int);
signed short (*v4) (signed char, signed char, unsigned int) = v3;
extern void v7 (signed int, unsigned int, unsigned short, signed short);
extern void (*v8) (signed int, unsigned int, unsigned short, signed short);
extern unsigned char v9 (unsigned char, unsigned short);
extern unsigned char (*v10) (unsigned char, unsigned short);
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
signed char v15 (unsigned char, unsigned char);
signed char (*v16) (unsigned char, unsigned char) = v15;
extern unsigned short v17 (signed int);
extern unsigned short (*v18) (signed int);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
extern void v27 (signed short);
extern void (*v28) (signed short);
extern unsigned short v29 (signed char);
extern unsigned short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v110 = 1;
signed short v109 = 0;
unsigned int v108 = 5U;

unsigned char v19 (void)
{
{
for (;;) {
signed short v113 = -1;
signed char v112 = 2;
signed short v111 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned char v114, unsigned char v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 3U;
unsigned char v117 = 5;
unsigned short v116 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed char v119, signed char v120, unsigned int v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned short v124 = 6;
unsigned char v123 = 5;
unsigned char v122 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed char v125, unsigned short v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned short v129 = 1;
signed int v128 = -1;
unsigned char v127 = 5;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v130;
signed char v131;
v130 = 2 + v126;
v131 = v23 (v130);
history[history_index++] = (int)v131;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}
