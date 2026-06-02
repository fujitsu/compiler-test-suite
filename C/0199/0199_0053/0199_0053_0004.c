#include <stdlib.h>
void v1 (signed short, signed short);
void (*v2) (signed short, signed short) = v1;
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern unsigned short v5 (unsigned int, unsigned int);
extern unsigned short (*v6) (unsigned int, unsigned int);
extern signed int v7 (signed short, signed short, signed char, unsigned int);
extern signed int (*v8) (signed short, signed short, signed char, unsigned int);
extern signed int v9 (unsigned int, signed short, unsigned int);
extern signed int (*v10) (unsigned int, signed short, unsigned int);
unsigned short v11 (signed char, signed short, unsigned int, signed int);
unsigned short (*v12) (signed char, signed short, unsigned int, signed int) = v11;
extern unsigned int v13 (unsigned char, signed short, signed char);
extern unsigned int (*v14) (unsigned char, signed short, signed char);
extern signed char v15 (signed char);
extern signed char (*v16) (signed char);
signed int v17 (unsigned int, signed short, signed char);
signed int (*v18) (unsigned int, signed short, signed char) = v17;
extern signed char v19 (unsigned int, signed int);
extern signed char (*v20) (unsigned int, signed int);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern signed short v23 (unsigned char, signed int, signed int, unsigned int);
extern signed short (*v24) (unsigned char, signed int, signed int, unsigned int);
extern signed short v25 (signed char, unsigned short);
extern signed short (*v26) (signed char, unsigned short);
extern unsigned short v27 (unsigned short, signed char, unsigned char);
extern unsigned short (*v28) (unsigned short, signed char, unsigned char);
extern signed char v29 (signed int, signed int, signed char, signed char);
extern signed char (*v30) (signed int, signed int, signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v136 = -4;
unsigned char v135 = 1;
unsigned int v134 = 6U;

signed int v21 (void)
{
{
for (;;) {
signed int v139 = -3;
unsigned char v138 = 4;
unsigned int v137 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned int v140, signed short v141, signed char v142)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned int v145 = 1U;
unsigned int v144 = 5U;
signed char v143 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed char v146, signed short v147, unsigned int v148, signed int v149)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
signed char v152 = 1;
signed int v151 = 3;
unsigned short v150 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed short v153, signed short v154)
{
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
{
for (;;) {
unsigned int v157 = 5U;
signed short v156 = -2;
unsigned short v155 = 5;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v158;
signed int v159;
signed char v160;
v158 = 3U + 0U;
v159 = -1 + 0;
v160 = v19 (v158, v159);
history[history_index++] = (int)v160;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
