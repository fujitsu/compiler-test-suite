#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern void v3 (unsigned char, signed int);
extern void (*v4) (unsigned char, signed int);
extern unsigned char v7 (signed char, signed int, signed char, signed short);
extern unsigned char (*v8) (signed char, signed int, signed char, signed short);
void v11 (signed short, unsigned char, signed int);
void (*v12) (signed short, unsigned char, signed int) = v11;
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
extern signed short v17 (unsigned short, unsigned char, signed char, unsigned char);
extern signed short (*v18) (unsigned short, unsigned char, signed char, unsigned char);
void v19 (unsigned short, signed short, signed short);
void (*v20) (unsigned short, signed short, signed short) = v19;
extern void v21 (signed short, unsigned char);
extern void (*v22) (signed short, unsigned char);
extern unsigned char v23 (signed char, unsigned int);
extern unsigned char (*v24) (signed char, unsigned int);
extern void v27 (void);
extern void (*v28) (void);
extern signed char v29 (signed int, signed int, unsigned char, signed short);
extern signed char (*v30) (signed int, signed int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v141 = -3;
signed char v140 = 0;
unsigned int v139 = 5U;

void v19 (unsigned short v142, signed short v143, signed short v144)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned short v147 = 5;
unsigned int v146 = 4U;
signed int v145 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed short v148, unsigned char v149, signed int v150)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
signed int v153 = 0;
signed short v152 = 0;
signed short v151 = -4;
trace++;
switch (trace)
{
case 10: 
{
signed short v154;
unsigned char v155;
v154 = v151 - v151;
v155 = 7 + v149;
v21 (v154, v155);
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
