#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern signed short v3 (unsigned char, unsigned int, unsigned short, signed char);
extern signed short (*v4) (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned short v5 (signed char);
extern unsigned short (*v6) (signed char);
unsigned int v7 (signed short, unsigned int, signed char);
unsigned int (*v8) (signed short, unsigned int, signed char) = v7;
extern void v9 (unsigned short, signed int, unsigned short);
extern void (*v10) (unsigned short, signed int, unsigned short);
extern unsigned int v11 (unsigned short, unsigned int, signed char);
extern unsigned int (*v12) (unsigned short, unsigned int, signed char);
extern signed char v13 (signed char, signed char, signed int);
extern signed char (*v14) (signed char, signed char, signed int);
extern unsigned short v15 (signed char, signed char, unsigned char);
extern unsigned short (*v16) (signed char, signed char, unsigned char);
extern void v17 (unsigned int, unsigned short);
extern void (*v18) (unsigned int, unsigned short);
extern unsigned int v19 (unsigned int, unsigned char, signed short);
extern unsigned int (*v20) (unsigned int, unsigned char, signed short);
extern unsigned short v21 (unsigned char, unsigned int, unsigned int);
extern unsigned short (*v22) (unsigned char, unsigned int, unsigned int);
unsigned int v23 (unsigned char, unsigned short);
unsigned int (*v24) (unsigned char, unsigned short) = v23;
extern unsigned short v27 (signed char, unsigned short);
extern unsigned short (*v28) (signed char, unsigned short);
unsigned short v29 (signed int);
unsigned short (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v139 = 0;
signed short v138 = 0;
unsigned int v137 = 6U;

unsigned short v29 (signed int v140)
{
history[history_index++] = (int)v140;
{
for (;;) {
signed int v143 = 0;
unsigned char v142 = 2;
unsigned int v141 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (unsigned char v144, unsigned short v145)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
signed short v148 = 2;
unsigned int v147 = 6U;
unsigned int v146 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed short v149, unsigned int v150, signed char v151)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
unsigned short v154 = 3;
signed int v153 = 1;
unsigned char v152 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
