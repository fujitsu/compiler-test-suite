#include <stdlib.h>
unsigned char v1 (signed char, unsigned int, unsigned int, unsigned int);
unsigned char (*v2) (signed char, unsigned int, unsigned int, unsigned int) = v1;
signed char v3 (signed int, unsigned char, unsigned int, unsigned char);
signed char (*v4) (signed int, unsigned char, unsigned int, unsigned char) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
signed char v7 (signed short, unsigned short);
signed char (*v8) (signed short, unsigned short) = v7;
extern signed char v9 (signed char, unsigned short, unsigned int);
extern signed char (*v10) (signed char, unsigned short, unsigned int);
extern unsigned short v13 (unsigned char, signed short, unsigned char);
extern unsigned short (*v14) (unsigned char, signed short, unsigned char);
extern signed short v15 (signed char, signed short);
extern signed short (*v16) (signed char, signed short);
extern signed char v17 (signed short, unsigned char);
extern signed char (*v18) (signed short, unsigned char);
extern unsigned short v19 (signed int, signed char, signed short, unsigned short);
extern unsigned short (*v20) (signed int, signed char, signed short, unsigned short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned int v23 (signed int, unsigned short);
extern unsigned int (*v24) (signed int, unsigned short);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v122 = 6;
unsigned char v121 = 2;
unsigned char v120 = 3;

signed char v7 (signed short v123, unsigned short v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed char v127 = -4;
signed char v126 = 0;
unsigned char v125 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed int v128, unsigned char v129, unsigned int v130, unsigned char v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed short v134 = -4;
signed short v133 = -1;
signed char v132 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed char v135, unsigned int v136, unsigned int v137, unsigned int v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed int v141 = -1;
unsigned short v140 = 4;
unsigned char v139 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v142;
v142 = v5 ();
history[history_index++] = (int)v142;
}
break;
case 14: 
return v139;
default: abort ();
}
}
}
}
