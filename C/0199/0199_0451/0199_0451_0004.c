#include <stdlib.h>
signed int v3 (unsigned int, unsigned int, unsigned int, signed int);
signed int (*v4) (unsigned int, unsigned int, unsigned int, signed int) = v3;
extern unsigned char v5 (unsigned char);
extern unsigned char (*v6) (unsigned char);
extern signed char v7 (signed short, signed short, unsigned short, unsigned short);
extern signed char (*v8) (signed short, signed short, unsigned short, unsigned short);
extern signed char v9 (unsigned int, signed char, signed char, unsigned char);
extern signed char (*v10) (unsigned int, signed char, signed char, unsigned char);
void v11 (signed short, unsigned short, unsigned char, signed int);
void (*v12) (signed short, unsigned short, unsigned char, signed int) = v11;
extern signed int v13 (unsigned short, signed short);
extern signed int (*v14) (unsigned short, signed short);
extern unsigned char v15 (unsigned short, unsigned short, signed short, unsigned char);
extern unsigned char (*v16) (unsigned short, unsigned short, signed short, unsigned char);
extern signed char v17 (unsigned short);
extern signed char (*v18) (unsigned short);
extern signed int v19 (signed int, signed char, unsigned short, signed char);
extern signed int (*v20) (signed int, signed char, unsigned short, signed char);
extern unsigned int v21 (signed short);
extern unsigned int (*v22) (signed short);
extern signed int v23 (unsigned char, unsigned int);
extern signed int (*v24) (unsigned char, unsigned int);
unsigned int v25 (signed short, unsigned char, signed short, unsigned short);
unsigned int (*v26) (signed short, unsigned char, signed short, unsigned short) = v25;
extern signed short v27 (signed int, signed char, signed int, signed char);
extern signed short (*v28) (signed int, signed char, signed int, signed char);
extern signed short v29 (signed int, unsigned short, unsigned char);
extern signed short (*v30) (signed int, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v141 = -4;
signed short v140 = -3;
unsigned char v139 = 2;

unsigned int v25 (signed short v142, unsigned char v143, signed short v144, unsigned short v145)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
signed int v148 = -1;
unsigned short v147 = 6;
unsigned int v146 = 5U;
trace++;
switch (trace)
{
case 8: 
return 1U;
default: abort ();
}
}
}
}

void v11 (signed short v149, unsigned short v150, unsigned char v151, signed int v152)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
{
for (;;) {
unsigned int v155 = 0U;
signed char v154 = -1;
signed short v153 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned int v156, unsigned int v157, unsigned int v158, signed int v159)
{
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
history[history_index++] = (int)v159;
{
for (;;) {
unsigned short v162 = 1;
unsigned char v161 = 5;
signed char v160 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
