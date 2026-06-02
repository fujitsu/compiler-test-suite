#include <stdlib.h>
void v1 (unsigned int, signed short);
void (*v2) (unsigned int, signed short) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned int v5 (unsigned int, signed int);
extern unsigned int (*v6) (unsigned int, signed int);
extern signed char v7 (signed char);
extern signed char (*v8) (signed char);
unsigned short v11 (signed char);
unsigned short (*v12) (signed char) = v11;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern unsigned char v19 (unsigned char, unsigned short, unsigned int, signed short);
extern unsigned char (*v20) (unsigned char, unsigned short, unsigned int, signed short);
signed char v21 (signed char, signed short, signed int);
signed char (*v22) (signed char, signed short, signed int) = v21;
extern void v25 (unsigned short, unsigned int, signed char);
extern void (*v26) (unsigned short, unsigned int, signed char);
extern void v29 (signed char, unsigned char, signed short);
extern void (*v30) (signed char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v141 = -4;
unsigned short v140 = 0;
unsigned int v139 = 3U;

signed char v21 (signed char v142, signed short v143, signed int v144)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed short v147 = -1;
signed int v146 = 0;
unsigned char v145 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed char v148)
{
history[history_index++] = (int)v148;
{
for (;;) {
unsigned short v151 = 7;
signed int v150 = -2;
unsigned char v149 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned int v152, signed short v153)
{
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
unsigned short v156 = 4;
signed char v155 = -1;
unsigned short v154 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v157;
signed int v158;
unsigned int v159;
v157 = v152 + v152;
v158 = -4 - 1;
v159 = v5 (v157, v158);
history[history_index++] = (int)v159;
}
break;
case 18: 
return;
default: abort ();
}
}
}
}
