#include <stdlib.h>
extern void v1 (signed short, unsigned int, unsigned char, unsigned int);
extern void (*v2) (signed short, unsigned int, unsigned char, unsigned int);
unsigned char v3 (signed char);
unsigned char (*v4) (signed char) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned char v7 (unsigned int, unsigned char, signed char);
extern unsigned char (*v8) (unsigned int, unsigned char, signed char);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
unsigned short v11 (unsigned short, unsigned char, signed int, signed short);
unsigned short (*v12) (unsigned short, unsigned char, signed int, signed short) = v11;
extern signed int v13 (unsigned char, unsigned char);
extern signed int (*v14) (unsigned char, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (signed char, signed char, signed short);
extern unsigned int (*v18) (signed char, signed char, signed short);
extern unsigned int v19 (unsigned short, signed char, unsigned char, signed short);
extern unsigned int (*v20) (unsigned short, signed char, unsigned char, signed short);
extern unsigned char v21 (signed char, unsigned short);
extern unsigned char (*v22) (signed char, unsigned short);
extern signed int v23 (unsigned int, signed char);
extern signed int (*v24) (unsigned int, signed char);
void v25 (unsigned char, unsigned int);
void (*v26) (unsigned char, unsigned int) = v25;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v119 = 1U;
signed short v118 = 1;
signed short v117 = -2;

void v25 (unsigned char v120, unsigned int v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned short v124 = 5;
unsigned char v123 = 1;
unsigned char v122 = 4;
trace++;
switch (trace)
{
case 5: 
{
v29 ();
}
break;
case 7: 
{
v29 ();
}
break;
case 9: 
{
v29 ();
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned short v125, unsigned char v126, signed int v127, signed short v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 2;
signed int v130 = 3;
signed short v129 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v132;
signed char v133;
unsigned char v134;
signed short v135;
unsigned int v136;
v132 = 5 + v125;
v133 = 3 - 1;
v134 = v126 + 4;
v135 = -3 - v129;
v136 = v19 (v132, v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 13: 
return 4;
default: abort ();
}
}
}
}

unsigned char v3 (signed char v137)
{
history[history_index++] = (int)v137;
{
for (;;) {
signed int v140 = 3;
unsigned short v139 = 4;
unsigned int v138 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
