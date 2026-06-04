#include <stdlib.h>
signed short v1 (signed int, unsigned int, unsigned short, signed int);
signed short (*v2) (signed int, unsigned int, unsigned short, signed int) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
unsigned char v5 (unsigned int);
unsigned char (*v6) (unsigned int) = v5;
extern unsigned char v7 (signed char, unsigned short, signed short);
extern unsigned char (*v8) (signed char, unsigned short, signed short);
extern unsigned int v9 (signed short, unsigned char, unsigned int, unsigned short);
extern unsigned int (*v10) (signed short, unsigned char, unsigned int, unsigned short);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern signed short v13 (signed int, signed int, unsigned int, signed char);
extern signed short (*v14) (signed int, signed int, unsigned int, signed char);
extern unsigned char v15 (signed char, unsigned short);
extern unsigned char (*v16) (signed char, unsigned short);
extern signed char v17 (signed int, unsigned char, signed short, unsigned char);
extern signed char (*v18) (signed int, unsigned char, signed short, unsigned char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
unsigned char v21 (signed int);
unsigned char (*v22) (signed int) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned char v25 (unsigned int, unsigned short);
extern unsigned char (*v26) (unsigned int, unsigned short);
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v123 = -4;
signed int v122 = -3;
signed int v121 = -4;

unsigned char v21 (signed int v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 2U;
signed int v126 = 1;
signed char v125 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
unsigned short v131 = 1;
unsigned char v130 = 3;
unsigned int v129 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed int v132, unsigned int v133, unsigned short v134, signed int v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned int v138 = 1U;
unsigned char v137 = 7;
signed int v136 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed short v139;
v139 = v23 ();
history[history_index++] = (int)v139;
}
break;
case 16: 
return -2;
default: abort ();
}
}
}
}
