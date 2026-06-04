#include <stdlib.h>
extern unsigned int v3 (unsigned int, signed int, unsigned int);
extern unsigned int (*v4) (unsigned int, signed int, unsigned int);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern signed char v7 (signed short, signed short, unsigned char, unsigned char);
extern signed char (*v8) (signed short, signed short, unsigned char, unsigned char);
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
extern void v11 (unsigned short, signed short, signed int, signed int);
extern void (*v12) (unsigned short, signed short, signed int, signed int);
extern unsigned short v13 (unsigned char, unsigned char);
extern unsigned short (*v14) (unsigned char, unsigned char);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
unsigned int v17 (unsigned int, signed char);
unsigned int (*v18) (unsigned int, signed char) = v17;
unsigned char v19 (signed int, unsigned char);
unsigned char (*v20) (signed int, unsigned char) = v19;
signed short v21 (unsigned short);
signed short (*v22) (unsigned short) = v21;
extern signed int v23 (unsigned char, unsigned int, unsigned int);
extern signed int (*v24) (unsigned char, unsigned int, unsigned int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern unsigned short v29 (signed char, unsigned int, unsigned short);
extern unsigned short (*v30) (signed char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v125 = 2U;
signed int v124 = -4;
signed char v123 = 3;

signed short v21 (unsigned short v126)
{
history[history_index++] = (int)v126;
{
for (;;) {
unsigned char v129 = 6;
signed int v128 = -2;
signed int v127 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed int v130, unsigned char v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 2U;
signed char v133 = -4;
unsigned char v132 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned int v135, signed char v136)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned char v139 = 0;
signed short v138 = -1;
signed short v137 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed int v140;
unsigned char v141;
v140 = 3 + 2;
v141 = v9 (v140);
history[history_index++] = (int)v141;
}
break;
case 3: 
{
signed int v142;
unsigned char v143;
v142 = -4 - -1;
v143 = v9 (v142);
history[history_index++] = (int)v143;
}
break;
case 13: 
return 2U;
default: abort ();
}
}
}
}
