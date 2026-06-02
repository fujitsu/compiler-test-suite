#include <stdlib.h>
signed int v1 (unsigned char, signed short, signed int, unsigned short);
signed int (*v2) (unsigned char, signed short, signed int, unsigned short) = v1;
extern unsigned int v3 (unsigned short, unsigned int);
extern unsigned int (*v4) (unsigned short, unsigned int);
extern unsigned char v5 (signed int, unsigned char, unsigned int);
extern unsigned char (*v6) (signed int, unsigned char, unsigned int);
extern unsigned char v7 (signed int, unsigned char, signed char, signed short);
extern unsigned char (*v8) (signed int, unsigned char, signed char, signed short);
extern unsigned char v9 (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned char (*v10) (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern void v15 (unsigned char, unsigned char, signed int);
extern void (*v16) (unsigned char, unsigned char, signed int);
extern unsigned char v17 (signed int);
extern unsigned char (*v18) (signed int);
extern signed short v19 (unsigned char, unsigned char, signed short, unsigned int);
extern signed short (*v20) (unsigned char, unsigned char, signed short, unsigned int);
unsigned int v21 (unsigned char, signed short, unsigned short);
unsigned int (*v22) (unsigned char, signed short, unsigned short) = v21;
extern unsigned short v23 (signed short, unsigned int);
extern unsigned short (*v24) (signed short, unsigned int);
extern unsigned int v25 (signed char, signed short, unsigned int, signed char);
extern unsigned int (*v26) (signed char, signed short, unsigned int, signed char);
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
extern signed int v29 (unsigned int, unsigned char, signed short, unsigned int);
extern signed int (*v30) (unsigned int, unsigned char, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v124 = -2;
signed short v123 = -4;
signed int v122 = 0;

unsigned int v21 (unsigned char v125, signed short v126, unsigned short v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed short v130 = 2;
unsigned short v129 = 1;
unsigned char v128 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
unsigned int v133 = 4U;
signed short v132 = 3;
unsigned short v131 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned char v134, signed short v135, signed int v136, unsigned short v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = 2;
unsigned int v139 = 5U;
unsigned char v138 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v141;
unsigned char v142;
signed short v143;
unsigned int v144;
signed short v145;
v141 = 7 + v134;
v142 = v138 - v134;
v143 = -3 - v135;
v144 = v139 - v139;
v145 = v19 (v141, v142, v143, v144);
history[history_index++] = (int)v145;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}
