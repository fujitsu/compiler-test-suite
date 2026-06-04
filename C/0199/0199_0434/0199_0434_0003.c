#include <stdlib.h>
signed short v1 (unsigned char, unsigned short, unsigned short);
signed short (*v2) (unsigned char, unsigned short, unsigned short) = v1;
extern unsigned int v3 (signed char, signed short, unsigned int);
extern unsigned int (*v4) (signed char, signed short, unsigned int);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern signed short v7 (unsigned char, signed char, unsigned short, unsigned char);
extern signed short (*v8) (unsigned char, signed char, unsigned short, unsigned char);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
void v13 (signed char, signed int, signed char);
void (*v14) (signed char, signed int, signed char) = v13;
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern unsigned char v17 (unsigned char, signed int, signed char);
extern unsigned char (*v18) (unsigned char, signed int, signed char);
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
extern unsigned char v21 (unsigned char, unsigned int, unsigned int, signed char);
extern unsigned char (*v22) (unsigned char, unsigned int, unsigned int, signed char);
extern signed char v25 (signed int, signed int, unsigned char);
extern signed char (*v26) (signed int, signed int, unsigned char);
extern unsigned char v27 (unsigned char, signed char, signed char, unsigned int);
extern unsigned char (*v28) (unsigned char, signed char, signed char, unsigned int);
extern signed char v29 (unsigned char, signed short, signed short, unsigned char);
extern signed char (*v30) (unsigned char, signed short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v130 = 1;
unsigned char v129 = 2;
unsigned char v128 = 7;

unsigned char v15 (void)
{
{
for (;;) {
unsigned int v133 = 2U;
signed char v132 = -3;
signed char v131 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed char v134, signed int v135, signed char v136)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned char v139 = 3;
unsigned int v138 = 4U;
signed short v137 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned char v140, unsigned short v141, unsigned short v142)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed short v145 = 1;
signed short v144 = -4;
unsigned char v143 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v146;
unsigned int v147;
unsigned int v148;
signed char v149;
unsigned char v150;
v146 = 1 + v140;
v147 = 6U - 5U;
v148 = 2U + 5U;
v149 = 1 + 3;
v150 = v21 (v146, v147, v148, v149);
history[history_index++] = (int)v150;
}
break;
case 14: 
return v144;
default: abort ();
}
}
}
}
