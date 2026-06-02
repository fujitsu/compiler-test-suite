#include <stdlib.h>
extern void v1 (signed char, signed short);
extern void (*v2) (signed char, signed short);
extern unsigned char v3 (unsigned short, signed char);
extern unsigned char (*v4) (unsigned short, signed char);
unsigned char v5 (unsigned char, signed short);
unsigned char (*v6) (unsigned char, signed short) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned short v9 (signed int, unsigned short, signed int);
extern unsigned short (*v10) (signed int, unsigned short, signed int);
extern unsigned char v11 (unsigned short, signed char);
extern unsigned char (*v12) (unsigned short, signed char);
extern signed short v13 (unsigned char, signed int, signed int);
extern signed short (*v14) (unsigned char, signed int, signed int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern void v21 (unsigned short);
extern void (*v22) (unsigned short);
extern unsigned char v23 (signed int, unsigned char, signed int);
extern unsigned char (*v24) (signed int, unsigned char, signed int);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned char v29 (signed char, signed short);
extern unsigned char (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v82 = 6;
unsigned char v81 = 5;
unsigned int v80 = 3U;

unsigned char v5 (unsigned char v83, signed short v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 2U;
signed int v86 = -1;
signed short v85 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
