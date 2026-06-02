#include <stdlib.h>
extern signed int v1 (unsigned int);
extern signed int (*v2) (unsigned int);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
unsigned char v7 (unsigned short, unsigned short);
unsigned char (*v8) (unsigned short, unsigned short) = v7;
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
void v11 (unsigned char, unsigned char, signed char);
void (*v12) (unsigned char, unsigned char, signed char) = v11;
extern void v13 (unsigned char, unsigned int, signed char);
extern void (*v14) (unsigned char, unsigned int, signed char);
extern void v15 (void);
extern void (*v16) (void);
extern signed int v17 (unsigned int, unsigned short, unsigned int, unsigned int);
extern signed int (*v18) (unsigned int, unsigned short, unsigned int, unsigned int);
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern signed short v25 (unsigned short, unsigned int, unsigned char);
extern signed short (*v26) (unsigned short, unsigned int, unsigned char);
extern signed int v27 (signed short, unsigned int, unsigned int, signed int);
extern signed int (*v28) (signed short, unsigned int, unsigned int, signed int);
extern signed int v29 (signed int, unsigned short, unsigned char);
extern signed int (*v30) (signed int, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v123 = 7;
unsigned short v122 = 4;
signed short v121 = 1;

signed short v23 (void)
{
{
for (;;) {
signed short v126 = -2;
signed char v125 = 3;
unsigned int v124 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned char v127, unsigned char v128, signed char v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed short v132 = 0;
signed short v131 = 2;
unsigned int v130 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v133, unsigned short v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed char v137 = -2;
unsigned char v136 = 6;
signed int v135 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v138;
signed int v139;
v138 = v134 - v133;
v139 = v9 (v138);
history[history_index++] = (int)v139;
}
break;
case 13: 
return 4;
default: abort ();
}
}
}
}
