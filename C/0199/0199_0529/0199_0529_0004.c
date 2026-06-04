#include <stdlib.h>
extern unsigned short v3 (signed int, signed short);
extern unsigned short (*v4) (signed int, signed short);
extern void v5 (signed char, signed short, signed int, signed int);
extern void (*v6) (signed char, signed short, signed int, signed int);
extern signed short v7 (signed int, unsigned short, unsigned short);
extern signed short (*v8) (signed int, unsigned short, unsigned short);
extern unsigned int v9 (unsigned int, signed char, unsigned char, signed short);
extern unsigned int (*v10) (unsigned int, signed char, unsigned char, signed short);
extern unsigned int v11 (unsigned char, signed short);
extern unsigned int (*v12) (unsigned char, signed short);
extern void v13 (unsigned char, unsigned short, signed int, unsigned char);
extern void (*v14) (unsigned char, unsigned short, signed int, unsigned char);
extern signed short v15 (signed char, signed short);
extern signed short (*v16) (signed char, signed short);
void v17 (void);
void (*v18) (void) = v17;
extern unsigned short v19 (signed short, signed int);
extern unsigned short (*v20) (signed short, signed int);
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
signed char v23 (signed char, signed char);
signed char (*v24) (signed char, signed char) = v23;
unsigned char v25 (unsigned short);
unsigned char (*v26) (unsigned short) = v25;
extern signed short v27 (signed char);
extern signed short (*v28) (signed char);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v119 = 6;
unsigned short v118 = 6;
unsigned char v117 = 3;

unsigned char v25 (unsigned short v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = -2;
unsigned int v122 = 0U;
unsigned short v121 = 7;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v124;
unsigned char v125;
v124 = 0 + v120;
v125 = v25 (v124);
history[history_index++] = (int)v125;
}
break;
case 10: 
{
unsigned short v126;
unsigned char v127;
v126 = 6 - 5;
v127 = v25 (v126);
history[history_index++] = (int)v127;
}
break;
case 11: 
return 7;
case 12: 
return 4;
case 13: 
return 3;
default: abort ();
}
}
}
}

signed char v23 (signed char v128, signed char v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 2U;
signed int v131 = -1;
unsigned char v130 = 3;
trace++;
switch (trace)
{
case 1: 
return v128;
case 3: 
return -1;
default: abort ();
}
}
}
}

unsigned int v21 (void)
{
{
for (;;) {
unsigned int v135 = 0U;
unsigned short v134 = 7;
signed int v133 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (void)
{
{
for (;;) {
unsigned char v138 = 1;
unsigned char v137 = 6;
unsigned char v136 = 0;
trace++;
switch (trace)
{
case 5: 
{
signed short v139;
signed int v140;
unsigned short v141;
v139 = -2 - -3;
v140 = 2 + 0;
v141 = v19 (v139, v140);
history[history_index++] = (int)v141;
}
break;
case 7: 
return;
default: abort ();
}
}
}
}
