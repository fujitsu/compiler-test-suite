#include <stdlib.h>
extern signed char v1 (signed short, signed char, signed int);
extern signed char (*v2) (signed short, signed char, signed int);
extern signed short v3 (unsigned char, signed char, signed short);
extern signed short (*v4) (unsigned char, signed char, signed short);
extern unsigned short v5 (unsigned int, signed char, signed short, unsigned short);
extern unsigned short (*v6) (unsigned int, signed char, signed short, unsigned short);
unsigned int v7 (unsigned short, signed char);
unsigned int (*v8) (unsigned short, signed char) = v7;
extern unsigned int v9 (signed char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char);
signed int v11 (unsigned int, unsigned char, unsigned int);
signed int (*v12) (unsigned int, unsigned char, unsigned int) = v11;
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern signed char v15 (signed short, signed char, signed short, unsigned int);
extern signed char (*v16) (signed short, signed char, signed short, unsigned int);
extern void v17 (unsigned char, signed char);
extern void (*v18) (unsigned char, signed char);
extern unsigned short v19 (unsigned char, signed short, unsigned short);
extern unsigned short (*v20) (unsigned char, signed short, unsigned short);
extern signed short v21 (signed int, unsigned int, signed char);
extern signed short (*v22) (signed int, unsigned int, signed char);
extern unsigned int v25 (signed short, unsigned short);
extern unsigned int (*v26) (signed short, unsigned short);
extern void v27 (signed int, unsigned int, signed char, signed char);
extern void (*v28) (signed int, unsigned int, signed char, signed char);
extern void v29 (signed int, unsigned char, unsigned char, unsigned char);
extern void (*v30) (signed int, unsigned char, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v121 = -3;
signed char v120 = -4;
signed char v119 = 1;

signed int v11 (unsigned int v122, unsigned char v123, unsigned int v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = 0;
signed int v126 = -4;
unsigned int v125 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned short v128, signed char v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 6;
signed short v131 = -2;
signed short v130 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
