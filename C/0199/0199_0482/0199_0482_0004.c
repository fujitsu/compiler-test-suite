#include <stdlib.h>
extern signed short v1 (unsigned int, signed int, unsigned short);
extern signed short (*v2) (unsigned int, signed int, unsigned short);
extern void v5 (signed char, signed int, unsigned short, unsigned short);
extern void (*v6) (signed char, signed int, unsigned short, unsigned short);
extern signed char v7 (signed int, unsigned char, unsigned short);
extern signed char (*v8) (signed int, unsigned char, unsigned short);
signed int v9 (signed char, signed char);
signed int (*v10) (signed char, signed char) = v9;
extern signed int v11 (unsigned int, signed int, unsigned short, signed int);
extern signed int (*v12) (unsigned int, signed int, unsigned short, signed int);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
unsigned char v15 (signed short);
unsigned char (*v16) (signed short) = v15;
extern unsigned char v17 (signed int, signed char);
extern unsigned char (*v18) (signed int, signed char);
extern signed int v21 (signed int);
extern signed int (*v22) (signed int);
extern unsigned char v23 (signed short, signed int, signed int, signed int);
extern unsigned char (*v24) (signed short, signed int, signed int, signed int);
extern unsigned short v25 (signed char, unsigned short, unsigned int);
extern unsigned short (*v26) (signed char, unsigned short, unsigned int);
extern signed short v27 (signed int, unsigned short);
extern signed short (*v28) (signed int, unsigned short);
unsigned int v29 (unsigned short, signed short, signed short);
unsigned int (*v30) (unsigned short, signed short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v142 = 6U;
signed short v141 = -4;
signed short v140 = 2;

unsigned int v29 (unsigned short v143, signed short v144, signed short v145)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned short v148 = 0;
unsigned short v147 = 6;
signed char v146 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed short v149)
{
history[history_index++] = (int)v149;
{
for (;;) {
signed short v152 = 0;
unsigned int v151 = 4U;
unsigned int v150 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed char v153, signed char v154)
{
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
{
for (;;) {
unsigned int v157 = 3U;
unsigned char v156 = 3;
signed char v155 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
