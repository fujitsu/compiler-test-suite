#include <stdlib.h>
signed short v1 (unsigned int, unsigned short, unsigned int);
signed short (*v2) (unsigned int, unsigned short, unsigned int) = v1;
extern signed short v5 (unsigned char, signed char, signed short);
extern signed short (*v6) (unsigned char, signed char, signed short);
unsigned int v7 (unsigned int);
unsigned int (*v8) (unsigned int) = v7;
extern unsigned int v9 (signed char, signed char);
extern unsigned int (*v10) (signed char, signed char);
extern unsigned short v11 (signed char, unsigned short);
extern unsigned short (*v12) (signed char, unsigned short);
void v13 (unsigned short, unsigned short);
void (*v14) (unsigned short, unsigned short) = v13;
extern signed int v15 (unsigned short, signed char, signed short, signed char);
extern signed int (*v16) (unsigned short, signed char, signed short, signed char);
extern signed short v17 (unsigned short, signed char);
extern signed short (*v18) (unsigned short, signed char);
extern unsigned char v19 (unsigned short, signed int, unsigned short);
extern unsigned char (*v20) (unsigned short, signed int, unsigned short);
extern unsigned int v21 (signed char, unsigned short, unsigned int, signed short);
extern unsigned int (*v22) (signed char, unsigned short, unsigned int, signed short);
extern signed int v23 (unsigned char, signed short, unsigned char);
extern signed int (*v24) (unsigned char, signed short, unsigned char);
extern signed char v27 (signed char);
extern signed char (*v28) (signed char);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v138 = 4;
unsigned short v137 = 5;
unsigned char v136 = 2;

void v13 (unsigned short v139, unsigned short v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned short v143 = 6;
signed char v142 = -4;
unsigned char v141 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned int v144)
{
history[history_index++] = (int)v144;
{
for (;;) {
signed int v147 = -2;
unsigned int v146 = 1U;
signed char v145 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned int v148, unsigned short v149, unsigned int v150)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
signed int v153 = -4;
signed int v152 = 2;
unsigned short v151 = 5;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v154;
signed char v155;
signed short v156;
signed short v157;
v154 = 0 + 0;
v155 = 3 - 3;
v156 = -3 - -4;
v157 = v5 (v154, v155, v156);
history[history_index++] = (int)v157;
}
break;
case 2: 
{
signed char v158;
unsigned short v159;
unsigned short v160;
v158 = -4 + 0;
v159 = v149 - 2;
v160 = v11 (v158, v159);
history[history_index++] = (int)v160;
}
break;
case 16: 
return 0;
default: abort ();
}
}
}
}
