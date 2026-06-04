#include <stdlib.h>
void v1 (unsigned short, signed short, signed char, unsigned short);
void (*v2) (unsigned short, signed short, signed char, unsigned short) = v1;
signed char v3 (signed int, unsigned int);
signed char (*v4) (signed int, unsigned int) = v3;
extern unsigned char v5 (signed int, signed int, signed char, unsigned short);
extern unsigned char (*v6) (signed int, signed int, signed char, unsigned short);
extern unsigned char v7 (signed short, signed char);
extern unsigned char (*v8) (signed short, signed char);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern void v11 (signed char, unsigned int, signed short);
extern void (*v12) (signed char, unsigned int, signed short);
extern unsigned char v13 (signed int, unsigned short);
extern unsigned char (*v14) (signed int, unsigned short);
extern signed short v15 (unsigned int, unsigned short);
extern signed short (*v16) (unsigned int, unsigned short);
extern signed int v17 (unsigned char, unsigned char, signed short, signed int);
extern signed int (*v18) (unsigned char, unsigned char, signed short, signed int);
extern unsigned short v19 (unsigned int);
extern unsigned short (*v20) (unsigned int);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern void v23 (unsigned int, unsigned int, unsigned short, unsigned int);
extern void (*v24) (unsigned int, unsigned int, unsigned short, unsigned int);
extern void v25 (signed int, signed int, signed int, unsigned char);
extern void (*v26) (signed int, signed int, signed int, unsigned char);
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v129 = 3;
unsigned char v128 = 7;
signed char v127 = 2;

signed char v3 (signed int v130, unsigned int v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed int v134 = 0;
unsigned short v133 = 1;
unsigned int v132 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned short v135, signed short v136, signed char v137, unsigned short v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed char v141 = 3;
signed int v140 = -1;
signed char v139 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v142;
unsigned char v143;
signed short v144;
signed int v145;
signed int v146;
v142 = 0 - 5;
v143 = 3 + 0;
v144 = v136 - -2;
v145 = -4 - v140;
v146 = v17 (v142, v143, v144, v145);
history[history_index++] = (int)v146;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
