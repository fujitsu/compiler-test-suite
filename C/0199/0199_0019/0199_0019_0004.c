#include <stdlib.h>
extern unsigned short v1 (signed char, signed int, unsigned char);
extern unsigned short (*v2) (signed char, signed int, unsigned char);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern signed short v5 (signed char, signed short);
extern signed short (*v6) (signed char, signed short);
extern signed short v7 (unsigned int, signed char, signed char, unsigned char);
extern signed short (*v8) (unsigned int, signed char, signed char, unsigned char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (signed int, unsigned int, signed short);
extern signed short (*v12) (signed int, unsigned int, signed short);
extern signed int v13 (unsigned char, signed short, unsigned char, unsigned char);
extern signed int (*v14) (unsigned char, signed short, unsigned char, unsigned char);
unsigned short v15 (signed char, signed char, unsigned short, signed short);
unsigned short (*v16) (signed char, signed char, unsigned short, signed short) = v15;
unsigned short v17 (unsigned char, signed int);
unsigned short (*v18) (unsigned char, signed int) = v17;
extern void v21 (signed char);
extern void (*v22) (signed char);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned int v25 (signed short, signed char);
extern unsigned int (*v26) (signed short, signed char);
signed char v27 (unsigned short, signed short, unsigned int, signed char);
signed char (*v28) (unsigned short, signed short, unsigned int, signed char) = v27;
extern unsigned int v29 (signed int, unsigned int, signed short);
extern unsigned int (*v30) (signed int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v118 = 5;
signed int v117 = -1;
signed int v116 = -4;

signed char v27 (unsigned short v119, signed short v120, unsigned int v121, signed char v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned char v125 = 6;
signed int v124 = 2;
signed char v123 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned char v126, signed int v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed short v130 = -4;
signed int v129 = 0;
unsigned int v128 = 4U;
trace++;
switch (trace)
{
case 7: 
{
signed char v131;
v131 = v23 ();
history[history_index++] = (int)v131;
}
break;
case 9: 
{
signed char v132;
v132 = v23 ();
history[history_index++] = (int)v132;
}
break;
case 11: 
return 7;
default: abort ();
}
}
}
}

unsigned short v15 (signed char v133, signed char v134, unsigned short v135, signed short v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned short v139 = 4;
signed char v138 = -4;
unsigned char v137 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
