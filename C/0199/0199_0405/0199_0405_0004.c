#include <stdlib.h>
unsigned short v1 (signed int, unsigned int, signed short);
unsigned short (*v2) (signed int, unsigned int, signed short) = v1;
signed int v3 (void);
signed int (*v4) (void) = v3;
extern unsigned int v5 (signed int);
extern unsigned int (*v6) (signed int);
extern signed short v7 (unsigned short, unsigned short, signed char, signed int);
extern signed short (*v8) (unsigned short, unsigned short, signed char, signed int);
extern void v9 (signed char);
extern void (*v10) (signed char);
extern signed char v11 (unsigned short, unsigned int, unsigned char);
extern signed char (*v12) (unsigned short, unsigned int, unsigned char);
extern signed short v13 (unsigned short, signed int, signed short);
extern signed short (*v14) (unsigned short, signed int, signed short);
extern unsigned char v15 (signed int, unsigned int);
extern unsigned char (*v16) (signed int, unsigned int);
unsigned char v17 (unsigned int, unsigned int);
unsigned char (*v18) (unsigned int, unsigned int) = v17;
extern signed short v19 (unsigned int, unsigned char);
extern signed short (*v20) (unsigned int, unsigned char);
extern unsigned short v21 (signed int, signed char, signed char);
extern unsigned short (*v22) (signed int, signed char, signed char);
signed char v23 (unsigned short);
signed char (*v24) (unsigned short) = v23;
extern unsigned char v25 (signed short, unsigned int, unsigned short, unsigned short);
extern unsigned char (*v26) (signed short, unsigned int, unsigned short, unsigned short);
extern signed int v27 (unsigned char, signed char, unsigned short, unsigned char);
extern signed int (*v28) (unsigned char, signed char, unsigned short, unsigned char);
extern unsigned int v29 (signed int, unsigned short, unsigned char, unsigned int);
extern unsigned int (*v30) (signed int, unsigned short, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v137 = -1;
signed short v136 = 1;
unsigned short v135 = 1;

signed char v23 (unsigned short v138)
{
history[history_index++] = (int)v138;
{
for (;;) {
unsigned int v141 = 4U;
unsigned char v140 = 6;
signed short v139 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned int v142, unsigned int v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed char v146 = 0;
signed char v145 = -4;
unsigned int v144 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
signed char v149 = 2;
signed int v148 = 1;
unsigned char v147 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed int v150, unsigned int v151, signed short v152)
{
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
{
for (;;) {
signed int v155 = 3;
signed short v154 = -3;
unsigned int v153 = 1U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v156;
unsigned short v157;
signed char v158;
signed int v159;
signed short v160;
v156 = 0 - 1;
v157 = 6 - 6;
v158 = 3 + -4;
v159 = v155 - v150;
v160 = v7 (v156, v157, v158, v159);
history[history_index++] = (int)v160;
}
break;
case 16: 
return 7;
default: abort ();
}
}
}
}
