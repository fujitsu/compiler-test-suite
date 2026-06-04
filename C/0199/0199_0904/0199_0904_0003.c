#include <stdlib.h>
extern signed int v1 (signed char, signed short, signed short);
extern signed int (*v2) (signed char, signed short, signed short);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned short v5 (signed short);
extern unsigned short (*v6) (signed short);
extern signed short v7 (signed short, unsigned char, signed char, signed short);
extern signed short (*v8) (signed short, unsigned char, signed char, signed short);
extern unsigned int v9 (signed short, unsigned char);
extern unsigned int (*v10) (signed short, unsigned char);
extern unsigned char v11 (unsigned short, signed char, signed int, signed short);
extern unsigned char (*v12) (unsigned short, signed char, signed int, signed short);
extern unsigned int v13 (unsigned short);
extern unsigned int (*v14) (unsigned short);
extern void v15 (signed int, signed char);
extern void (*v16) (signed int, signed char);
extern unsigned short v17 (unsigned short, signed int, unsigned short);
extern unsigned short (*v18) (unsigned short, signed int, unsigned short);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
signed int v21 (signed short, unsigned short, unsigned short);
signed int (*v22) (signed short, unsigned short, unsigned short) = v21;
extern unsigned short v23 (signed int, signed short, unsigned char, unsigned short);
extern unsigned short (*v24) (signed int, signed short, unsigned char, unsigned short);
extern void v25 (unsigned char, signed short, signed int);
extern void (*v26) (unsigned char, signed short, signed int);
extern signed short v27 (unsigned int, signed short, unsigned char, signed char);
extern signed short (*v28) (unsigned int, signed short, unsigned char, signed char);
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v127 = 3;
signed int v126 = 1;
unsigned int v125 = 0U;

signed int v21 (signed short v128, unsigned short v129, unsigned short v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned int v133 = 0U;
signed short v132 = 2;
signed char v131 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
