#include <stdlib.h>
extern signed short v1 (unsigned short);
extern signed short (*v2) (unsigned short);
extern unsigned char v3 (unsigned short, signed short, unsigned int, unsigned short);
extern unsigned char (*v4) (unsigned short, signed short, unsigned int, unsigned short);
extern signed short v7 (signed short, signed int);
extern signed short (*v8) (signed short, signed int);
signed short v9 (unsigned int);
signed short (*v10) (unsigned int) = v9;
unsigned char v11 (unsigned int, unsigned short, signed short);
unsigned char (*v12) (unsigned int, unsigned short, signed short) = v11;
unsigned short v13 (unsigned short, unsigned int);
unsigned short (*v14) (unsigned short, unsigned int) = v13;
extern signed char v15 (unsigned int, unsigned char, signed short);
extern signed char (*v16) (unsigned int, unsigned char, signed short);
extern unsigned short v17 (signed char, unsigned int, signed short);
extern unsigned short (*v18) (signed char, unsigned int, signed short);
extern signed int v19 (unsigned int, signed short);
extern signed int (*v20) (unsigned int, signed short);
extern unsigned char v23 (unsigned short);
extern unsigned char (*v24) (unsigned short);
extern signed int v25 (unsigned int, signed int, unsigned char, signed int);
extern signed int (*v26) (unsigned int, signed int, unsigned char, signed int);
extern void v29 (unsigned int, signed int);
extern void (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v119 = -2;
signed char v118 = 2;
unsigned int v117 = 0U;

unsigned short v13 (unsigned short v120, unsigned int v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned int v124 = 4U;
signed char v123 = 3;
unsigned short v122 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v125, unsigned short v126, signed short v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned short v130 = 1;
signed char v129 = -4;
signed char v128 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned int v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned short v134 = 6;
signed short v133 = 1;
unsigned char v132 = 1;
trace++;
switch (trace)
{
case 1: 
return v133;
default: abort ();
}
}
}
}
