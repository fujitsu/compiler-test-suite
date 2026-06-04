#include <stdlib.h>
extern unsigned short v1 (signed char, unsigned char, signed short);
extern unsigned short (*v2) (signed char, unsigned char, signed short);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern signed int v7 (signed short);
extern signed int (*v8) (signed short);
extern signed char v9 (unsigned short, unsigned short, signed short);
extern signed char (*v10) (unsigned short, unsigned short, signed short);
unsigned int v11 (unsigned char);
unsigned int (*v12) (unsigned char) = v11;
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern unsigned short v15 (signed char, signed char);
extern unsigned short (*v16) (signed char, signed char);
extern signed char v17 (signed short, unsigned char, unsigned int);
extern signed char (*v18) (signed short, unsigned char, unsigned int);
extern void v21 (unsigned char, signed char, signed int, unsigned char);
extern void (*v22) (unsigned char, signed char, signed int, unsigned char);
extern signed int v25 (unsigned char, unsigned short, unsigned char, unsigned int);
extern signed int (*v26) (unsigned char, unsigned short, unsigned char, unsigned int);
unsigned char v27 (signed short, signed short);
unsigned char (*v28) (signed short, signed short) = v27;
extern signed short v29 (unsigned int, signed char, unsigned short, unsigned short);
extern signed short (*v30) (unsigned int, signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v142 = 5;
unsigned char v141 = 5;
unsigned int v140 = 0U;

unsigned char v27 (signed short v143, signed short v144)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned char v147 = 5;
signed int v146 = 1;
signed char v145 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned char v148)
{
history[history_index++] = (int)v148;
{
for (;;) {
unsigned char v151 = 2;
unsigned int v150 = 3U;
unsigned char v149 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
