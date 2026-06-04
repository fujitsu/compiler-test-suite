#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned int);
extern unsigned char (*v2) (unsigned char, unsigned int);
extern unsigned char v3 (unsigned int, signed short, unsigned char);
extern unsigned char (*v4) (unsigned int, signed short, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed int v9 (signed short, unsigned char, signed char);
extern signed int (*v10) (signed short, unsigned char, signed char);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v17 (unsigned int, unsigned int);
extern signed short (*v18) (unsigned int, unsigned int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed char v21 (signed int, unsigned int, unsigned char);
extern signed char (*v22) (signed int, unsigned int, unsigned char);
extern unsigned char v23 (signed int, signed int, signed short);
extern unsigned char (*v24) (signed int, signed int, signed short);
extern signed int v25 (unsigned int, signed char);
extern signed int (*v26) (unsigned int, signed char);
unsigned char v27 (signed short, unsigned char, signed char);
unsigned char (*v28) (signed short, unsigned char, signed char) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed short v123 = 2;
unsigned char v122 = 2;
signed int v121 = -1;

unsigned char v27 (signed short v124, unsigned char v125, signed char v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed char v129 = 1;
unsigned int v128 = 7U;
unsigned int v127 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
