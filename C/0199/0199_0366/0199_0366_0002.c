#include <stdlib.h>
extern signed short v1 (signed char, signed short);
extern signed short (*v2) (signed char, signed short);
extern unsigned int v3 (unsigned short, unsigned int, unsigned char);
extern unsigned int (*v4) (unsigned short, unsigned int, unsigned char);
void v5 (unsigned char, unsigned char, signed short);
void (*v6) (unsigned char, unsigned char, signed short) = v5;
extern unsigned short v7 (unsigned char, unsigned char, signed short);
extern unsigned short (*v8) (unsigned char, unsigned char, signed short);
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
extern signed int v11 (unsigned int, unsigned char);
extern signed int (*v12) (unsigned int, unsigned char);
extern unsigned int v13 (signed char, unsigned char, signed int, signed int);
extern unsigned int (*v14) (signed char, unsigned char, signed int, signed int);
extern signed char v15 (signed int);
extern signed char (*v16) (signed int);
extern unsigned char v17 (unsigned int, unsigned int, unsigned int);
extern unsigned char (*v18) (unsigned int, unsigned int, unsigned int);
void v19 (unsigned char);
void (*v20) (unsigned char) = v19;
extern signed short v21 (unsigned short, signed int, unsigned short);
extern signed short (*v22) (unsigned short, signed int, unsigned short);
extern unsigned int v23 (signed short);
extern unsigned int (*v24) (signed short);
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
extern signed int v27 (signed short, signed int, signed short, signed int);
extern signed int (*v28) (signed short, signed int, signed short, signed int);
extern unsigned char v29 (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned char (*v30) (unsigned char, unsigned short, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v85 = 4;
signed char v84 = 1;
signed char v83 = -3;

void v19 (unsigned char v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = 0;
unsigned char v88 = 4;
signed char v87 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned char v90, unsigned char v91, signed short v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 5U;
signed char v94 = 1;
unsigned int v93 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
