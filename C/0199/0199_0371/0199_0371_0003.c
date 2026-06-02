#include <stdlib.h>
extern signed int v1 (signed short, unsigned char, signed short, unsigned short);
extern signed int (*v2) (signed short, unsigned char, signed short, unsigned short);
extern signed char v3 (unsigned short, unsigned short, signed short);
extern signed char (*v4) (unsigned short, unsigned short, signed short);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed short v7 (signed int, signed char, unsigned short);
extern signed short (*v8) (signed int, signed char, unsigned short);
extern signed int v9 (signed int, unsigned int, unsigned int);
extern signed int (*v10) (signed int, unsigned int, unsigned int);
extern unsigned char v11 (unsigned char);
extern unsigned char (*v12) (unsigned char);
extern signed short v13 (signed char, signed short, signed char);
extern signed short (*v14) (signed char, signed short, signed char);
signed short v15 (signed int, signed int, signed char);
signed short (*v16) (signed int, signed int, signed char) = v15;
extern void v17 (unsigned short, unsigned short, signed int, signed char);
extern void (*v18) (unsigned short, unsigned short, signed int, signed char);
extern unsigned char v19 (signed int, signed int, unsigned char);
extern unsigned char (*v20) (signed int, signed int, unsigned char);
extern unsigned char v21 (signed int, unsigned int, signed char, unsigned int);
extern unsigned char (*v22) (signed int, unsigned int, signed char, unsigned int);
extern unsigned char v23 (signed int, unsigned short, signed char, signed char);
extern unsigned char (*v24) (signed int, unsigned short, signed char, signed char);
extern void v25 (unsigned short, signed short, signed short, signed char);
extern void (*v26) (unsigned short, signed short, signed short, signed char);
extern unsigned int v27 (signed char, signed char, signed short, signed char);
extern unsigned int (*v28) (signed char, signed char, signed short, signed char);
extern unsigned int v29 (signed char, signed short, signed char);
extern unsigned int (*v30) (signed char, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v124 = 0U;
unsigned char v123 = 0;
unsigned char v122 = 5;

signed short v15 (signed int v125, signed int v126, signed char v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = -4;
unsigned char v129 = 7;
unsigned int v128 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
