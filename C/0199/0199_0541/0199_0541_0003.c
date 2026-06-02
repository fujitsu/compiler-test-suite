#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed short v3 (unsigned char);
extern signed short (*v4) (unsigned char);
extern signed char v5 (signed char, unsigned int, signed char);
extern signed char (*v6) (signed char, unsigned int, signed char);
extern signed short v7 (unsigned int, signed short, unsigned short);
extern signed short (*v8) (unsigned int, signed short, unsigned short);
extern signed int v9 (signed int, signed short, unsigned int);
extern signed int (*v10) (signed int, signed short, unsigned int);
extern signed char v11 (signed char, unsigned short, signed int, signed char);
extern signed char (*v12) (signed char, unsigned short, signed int, signed char);
extern unsigned char v13 (signed char, signed char, signed char, signed char);
extern unsigned char (*v14) (signed char, signed char, signed char, signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (unsigned short, signed char, unsigned int, unsigned int);
extern signed short (*v18) (unsigned short, signed char, unsigned int, unsigned int);
extern signed int v19 (signed short, unsigned int, signed char);
extern signed int (*v20) (signed short, unsigned int, signed char);
unsigned char v21 (unsigned int, unsigned short, unsigned short, unsigned short);
unsigned char (*v22) (unsigned int, unsigned short, unsigned short, unsigned short) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
unsigned char v25 (unsigned int);
unsigned char (*v26) (unsigned int) = v25;
extern unsigned short v27 (signed short, unsigned int);
extern unsigned short (*v28) (signed short, unsigned int);
extern signed short v29 (signed int);
extern signed short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v120 = 2;
unsigned short v119 = 2;
signed char v118 = -3;

unsigned char v25 (unsigned int v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 3;
signed short v123 = 1;
unsigned int v122 = 3U;
trace++;
switch (trace)
{
case 2: 
{
signed short v125;
unsigned int v126;
unsigned short v127;
v125 = 0 - v123;
v126 = 3U - v122;
v127 = v27 (v125, v126);
history[history_index++] = (int)v127;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}

unsigned char v21 (unsigned int v128, unsigned short v129, unsigned short v130, unsigned short v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed char v134 = 2;
unsigned int v133 = 6U;
unsigned char v132 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
