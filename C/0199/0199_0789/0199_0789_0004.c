#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned char v5 (unsigned short, unsigned char);
extern unsigned char (*v6) (unsigned short, unsigned char);
extern signed char v7 (signed char, unsigned int, unsigned short, unsigned int);
extern signed char (*v8) (signed char, unsigned int, unsigned short, unsigned int);
extern unsigned short v9 (unsigned char);
extern unsigned short (*v10) (unsigned char);
extern unsigned int v11 (signed int, unsigned short, signed char);
extern unsigned int (*v12) (signed int, unsigned short, signed char);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned short v15 (signed short, unsigned char);
extern unsigned short (*v16) (signed short, unsigned char);
signed short v17 (signed char, signed int, unsigned int, unsigned int);
signed short (*v18) (signed char, signed int, unsigned int, unsigned int) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
void v21 (unsigned int);
void (*v22) (unsigned int) = v21;
extern signed short v25 (unsigned char, unsigned short, unsigned char, signed char);
extern signed short (*v26) (unsigned char, unsigned short, unsigned char, signed char);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern void v29 (signed short, signed short, unsigned char, unsigned int);
extern void (*v30) (signed short, signed short, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v134 = -2;
unsigned int v133 = 2U;
unsigned int v132 = 5U;

void v21 (unsigned int v135)
{
history[history_index++] = (int)v135;
{
for (;;) {
signed short v138 = -3;
signed short v137 = -3;
unsigned short v136 = 7;
trace++;
switch (trace)
{
case 8: 
{
unsigned char v139;
unsigned short v140;
unsigned char v141;
signed char v142;
signed short v143;
v139 = 7 + 4;
v140 = v136 + v136;
v141 = 3 + 7;
v142 = -4 + 3;
v143 = v25 (v139, v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 10: 
return;
default: abort ();
}
}
}
}

signed short v17 (signed char v144, signed int v145, unsigned int v146, unsigned int v147)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed char v150 = -1;
unsigned short v149 = 6;
signed char v148 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
