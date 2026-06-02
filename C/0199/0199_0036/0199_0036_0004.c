#include <stdlib.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
signed char v3 (signed char);
signed char (*v4) (signed char) = v3;
extern signed char v5 (signed int);
extern signed char (*v6) (signed int);
extern unsigned char v7 (unsigned int, signed short);
extern unsigned char (*v8) (unsigned int, signed short);
extern signed char v9 (unsigned short, signed char);
extern signed char (*v10) (unsigned short, signed char);
extern void v11 (signed short, unsigned char);
extern void (*v12) (signed short, unsigned char);
unsigned short v13 (signed short, unsigned int, unsigned short, signed short);
unsigned short (*v14) (signed short, unsigned int, unsigned short, signed short) = v13;
extern unsigned short v15 (unsigned int, unsigned char, unsigned char);
extern unsigned short (*v16) (unsigned int, unsigned char, unsigned char);
extern signed int v17 (unsigned char, unsigned int, unsigned int, signed char);
extern signed int (*v18) (unsigned char, unsigned int, unsigned int, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (signed short, unsigned short, unsigned char, signed int);
extern signed char (*v22) (signed short, unsigned short, unsigned char, signed int);
void v23 (unsigned char);
void (*v24) (unsigned char) = v23;
extern unsigned int v25 (signed char, signed short, unsigned int);
extern unsigned int (*v26) (signed char, signed short, unsigned int);
extern unsigned int v29 (unsigned int, unsigned int);
extern unsigned int (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v119 = 3;
signed int v118 = 0;
signed short v117 = 2;

void v23 (unsigned char v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = 0;
unsigned int v122 = 0U;
unsigned short v121 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed short v124, unsigned int v125, unsigned short v126, signed short v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = 2;
signed int v129 = -4;
unsigned char v128 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed char v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned short v134 = 1;
unsigned short v133 = 0;
unsigned int v132 = 0U;
trace++;
switch (trace)
{
case 7: 
{
signed short v135;
unsigned short v136;
unsigned char v137;
signed int v138;
signed char v139;
v135 = 2 + -4;
v136 = v133 - 2;
v137 = 0 + 4;
v138 = 0 - -4;
v139 = v21 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 9: 
return v131;
default: abort ();
}
}
}
}
