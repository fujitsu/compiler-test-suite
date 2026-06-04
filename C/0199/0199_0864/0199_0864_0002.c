#include <stdlib.h>
extern void v3 (signed int);
extern void (*v4) (signed int);
extern void v5 (signed int, unsigned int, signed char, unsigned char);
extern void (*v6) (signed int, unsigned int, signed char, unsigned char);
extern signed int v7 (signed char, signed short, signed int, signed char);
extern signed int (*v8) (signed char, signed short, signed int, signed char);
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
extern signed char v13 (unsigned short, signed short);
extern signed char (*v14) (unsigned short, signed short);
unsigned short v15 (signed int, signed char);
unsigned short (*v16) (signed int, signed char) = v15;
extern signed int v17 (unsigned int, signed short);
extern signed int (*v18) (unsigned int, signed short);
extern signed int v19 (unsigned char, signed int, unsigned int, unsigned int);
extern signed int (*v20) (unsigned char, signed int, unsigned int, unsigned int);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (unsigned short, signed short);
extern unsigned int (*v24) (unsigned short, signed short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern void v29 (unsigned short, signed short, signed short, unsigned char);
extern void (*v30) (unsigned short, signed short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v120 = 7;
unsigned int v119 = 7U;
unsigned int v118 = 6U;

unsigned short v15 (signed int v121, signed char v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed int v125 = -3;
signed char v124 = 1;
signed short v123 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
