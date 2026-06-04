#include <stdlib.h>
extern void v3 (signed int, signed short, unsigned char);
extern void (*v4) (signed int, signed short, unsigned char);
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
extern signed int v7 (unsigned int, signed short, unsigned int);
extern signed int (*v8) (unsigned int, signed short, unsigned int);
extern signed char v9 (unsigned int, unsigned short, unsigned short, unsigned short);
extern signed char (*v10) (unsigned int, unsigned short, unsigned short, unsigned short);
extern signed char v11 (signed char);
extern signed char (*v12) (signed char);
extern signed int v13 (unsigned char, signed char, signed char, unsigned short);
extern signed int (*v14) (unsigned char, signed char, signed char, unsigned short);
extern signed char v15 (unsigned char, signed char, signed short);
extern signed char (*v16) (unsigned char, signed char, signed short);
extern void v17 (signed int, unsigned short, signed short, unsigned int);
extern void (*v18) (signed int, unsigned short, signed short, unsigned int);
extern unsigned char v19 (unsigned int);
extern unsigned char (*v20) (unsigned int);
extern signed int v21 (unsigned char, unsigned int, unsigned int, signed short);
extern signed int (*v22) (unsigned char, unsigned int, unsigned int, signed short);
extern signed int v23 (unsigned short, signed char);
extern signed int (*v24) (unsigned short, signed char);
extern signed short v25 (signed int, signed char);
extern signed short (*v26) (signed int, signed char);
signed char v27 (signed short, signed int, unsigned int, signed int);
signed char (*v28) (signed short, signed int, unsigned int, signed int) = v27;
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v82 = 0;
signed int v81 = -3;
signed short v80 = 3;

signed char v27 (signed short v83, signed int v84, unsigned int v85, signed int v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 5;
unsigned short v88 = 6;
signed int v87 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
