#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned char);
extern unsigned char (*v2) (unsigned short, unsigned char);
extern signed short v3 (signed int, signed char, signed int);
extern signed short (*v4) (signed int, signed char, signed int);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern signed int v7 (unsigned char, signed char);
extern signed int (*v8) (unsigned char, signed char);
extern unsigned short v9 (signed short);
extern unsigned short (*v10) (signed short);
extern unsigned short v11 (signed int, signed char, signed short, signed short);
extern unsigned short (*v12) (signed int, signed char, signed short, signed short);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern signed short v19 (unsigned int, signed int);
extern signed short (*v20) (unsigned int, signed int);
unsigned int v21 (signed char, signed char, signed char, signed short);
unsigned int (*v22) (signed char, signed char, signed char, signed short) = v21;
extern unsigned int v23 (unsigned short, unsigned int, signed int, unsigned short);
extern unsigned int (*v24) (unsigned short, unsigned int, signed int, unsigned short);
extern void v25 (signed int, unsigned int);
extern void (*v26) (signed int, unsigned int);
extern unsigned char v27 (signed char, signed char, unsigned int, signed int);
extern unsigned char (*v28) (signed char, signed char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v127 = 4U;
signed int v126 = -1;
signed int v125 = -3;

unsigned int v21 (signed char v128, signed char v129, signed char v130, signed short v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed int v134 = 3;
unsigned short v133 = 4;
signed short v132 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
signed char v137 = 0;
unsigned int v136 = 0U;
signed int v135 = -3;
trace++;
switch (trace)
{
case 7: 
return 7;
case 9: 
{
unsigned short v138;
unsigned char v139;
unsigned char v140;
v138 = 2 - 4;
v139 = 5 - 3;
v140 = v1 (v138, v139);
history[history_index++] = (int)v140;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}
