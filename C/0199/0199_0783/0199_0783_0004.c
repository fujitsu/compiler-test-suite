#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int);
extern unsigned char (*v2) (unsigned char, signed int);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern unsigned int v7 (signed int);
extern unsigned int (*v8) (signed int);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern unsigned int v11 (unsigned char, signed char, signed short);
extern unsigned int (*v12) (unsigned char, signed char, signed short);
extern signed int v15 (signed int, unsigned int, signed short);
extern signed int (*v16) (signed int, unsigned int, signed short);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern signed char v21 (unsigned int, unsigned short);
extern signed char (*v22) (unsigned int, unsigned short);
unsigned short v23 (signed short, unsigned int);
unsigned short (*v24) (signed short, unsigned int) = v23;
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
extern void v27 (unsigned char, signed short, signed char, unsigned short);
extern void (*v28) (unsigned char, signed short, signed char, unsigned short);
extern unsigned short v29 (unsigned int, unsigned char, unsigned int, signed int);
extern unsigned short (*v30) (unsigned int, unsigned char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v128 = 1;
signed int v127 = -2;
unsigned int v126 = 6U;

unsigned short v23 (signed short v129, unsigned int v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed char v133 = 3;
signed char v132 = 2;
signed short v131 = 2;
trace++;
switch (trace)
{
case 8: 
{
unsigned char v134;
signed short v135;
signed char v136;
unsigned short v137;
v134 = 3 + 7;
v135 = v129 - -3;
v136 = -2 - 2;
v137 = 2 + 5;
v27 (v134, v135, v136, v137);
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
unsigned int v140 = 4U;
signed int v139 = 1;
unsigned short v138 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
