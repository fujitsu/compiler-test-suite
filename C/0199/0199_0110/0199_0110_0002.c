#include <stdlib.h>
extern signed int v3 (signed int, unsigned char, unsigned char);
extern signed int (*v4) (signed int, unsigned char, unsigned char);
extern signed short v5 (unsigned char, unsigned char, unsigned int, unsigned short);
extern signed short (*v6) (unsigned char, unsigned char, unsigned int, unsigned short);
extern unsigned short v7 (signed short, unsigned char, signed int, unsigned short);
extern unsigned short (*v8) (signed short, unsigned char, signed int, unsigned short);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
unsigned short v11 (unsigned char, signed char, unsigned int, unsigned short);
unsigned short (*v12) (unsigned char, signed char, unsigned int, unsigned short) = v11;
extern unsigned short v13 (unsigned char);
extern unsigned short (*v14) (unsigned char);
extern void v15 (unsigned int, unsigned short, signed char);
extern void (*v16) (unsigned int, unsigned short, signed char);
extern unsigned short v17 (signed char, signed int);
extern unsigned short (*v18) (signed char, signed int);
extern signed short v19 (unsigned short, signed short);
extern signed short (*v20) (unsigned short, signed short);
extern signed short v23 (signed char, signed char, signed int);
extern signed short (*v24) (signed char, signed char, signed int);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (signed short, signed char);
extern signed short (*v28) (signed short, signed char);
extern unsigned short v29 (unsigned int, signed short, signed int);
extern unsigned short (*v30) (unsigned int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v120 = 2;
unsigned char v119 = 0;
unsigned char v118 = 5;

unsigned short v11 (unsigned char v121, signed char v122, unsigned int v123, unsigned short v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 6U;
signed int v126 = -4;
signed int v125 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
unsigned int v130 = 3U;
unsigned char v129 = 4;
unsigned int v128 = 2U;
trace++;
switch (trace)
{
case 1: 
{
signed char v131;
signed char v132;
signed int v133;
signed short v134;
v131 = -4 + 3;
v132 = -1 + -4;
v133 = 0 - 2;
v134 = v23 (v131, v132, v133);
history[history_index++] = (int)v134;
}
break;
case 3: 
return 7;
default: abort ();
}
}
}
}
