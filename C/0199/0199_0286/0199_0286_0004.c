#include <stdlib.h>
signed int v1 (unsigned short, unsigned int);
signed int (*v2) (unsigned short, unsigned int) = v1;
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v7 (unsigned short, signed int);
extern unsigned char (*v8) (unsigned short, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned short v11 (unsigned int, unsigned short, unsigned short, signed int);
extern unsigned short (*v12) (unsigned int, unsigned short, unsigned short, signed int);
extern unsigned char v13 (signed short, unsigned char);
extern unsigned char (*v14) (signed short, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
unsigned int v17 (unsigned short, signed int);
unsigned int (*v18) (unsigned short, signed int) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern void v21 (unsigned int, unsigned short, signed short, signed char);
extern void (*v22) (unsigned int, unsigned short, signed short, signed char);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern unsigned int v25 (signed short, unsigned char);
extern unsigned int (*v26) (signed short, unsigned char);
signed int v27 (signed int, signed char, signed short);
signed int (*v28) (signed int, signed char, signed short) = v27;
extern signed char v29 (signed int, unsigned char, unsigned char);
extern signed char (*v30) (signed int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v122 = 0;
signed char v121 = -4;
unsigned int v120 = 4U;

signed int v27 (signed int v123, signed char v124, signed short v125)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = 1;
signed int v127 = -1;
signed int v126 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned short v129, signed int v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = 1;
signed char v132 = -4;
unsigned int v131 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned short v134, unsigned int v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned int v138 = 5U;
unsigned int v137 = 4U;
unsigned int v136 = 1U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v139;
signed int v140;
unsigned char v141;
v139 = v134 + v134;
v140 = -2 - -3;
v141 = v7 (v139, v140);
history[history_index++] = (int)v141;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}
