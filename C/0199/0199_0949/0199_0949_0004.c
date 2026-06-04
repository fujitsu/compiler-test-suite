#include <stdlib.h>
void v1 (unsigned int, signed char);
void (*v2) (unsigned int, signed char) = v1;
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
extern unsigned char v7 (unsigned int, unsigned char, signed short);
extern unsigned char (*v8) (unsigned int, unsigned char, signed short);
extern signed short v9 (signed int, unsigned int, unsigned int, signed int);
extern signed short (*v10) (signed int, unsigned int, unsigned int, signed int);
extern signed short v11 (unsigned char, signed short, unsigned short, signed int);
extern signed short (*v12) (unsigned char, signed short, unsigned short, signed int);
extern unsigned short v13 (unsigned char, unsigned char, signed char);
extern unsigned short (*v14) (unsigned char, unsigned char, signed char);
extern unsigned char v15 (unsigned int, signed char);
extern unsigned char (*v16) (unsigned int, signed char);
extern unsigned int v17 (signed short, unsigned int);
extern unsigned int (*v18) (signed short, unsigned int);
extern void v19 (signed char, signed char, signed int);
extern void (*v20) (signed char, signed char, signed int);
extern signed int v21 (unsigned int);
extern signed int (*v22) (unsigned int);
extern signed char v25 (unsigned int, unsigned char, signed short);
extern signed char (*v26) (unsigned int, unsigned char, signed short);
signed char v27 (signed short, signed short, signed int);
signed char (*v28) (signed short, signed short, signed int) = v27;
extern signed int v29 (signed int, signed int, unsigned int, signed char);
extern signed int (*v30) (signed int, signed int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v149 = 1;
unsigned short v148 = 6;
signed short v147 = -1;

signed char v27 (signed short v150, signed short v151, signed int v152)
{
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
{
for (;;) {
unsigned short v155 = 4;
unsigned int v154 = 0U;
unsigned int v153 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned int v156, signed char v157)
{
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
{
for (;;) {
signed short v160 = -2;
signed short v159 = 3;
signed char v158 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed int v161;
unsigned int v162;
v161 = 1 - -1;
v162 = v3 (v161);
history[history_index++] = (int)v162;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
