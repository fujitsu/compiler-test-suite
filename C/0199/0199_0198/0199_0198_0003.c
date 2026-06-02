#include <stdlib.h>
extern signed int v3 (unsigned short, signed char, unsigned int);
extern signed int (*v4) (unsigned short, signed char, unsigned int);
extern unsigned int v5 (unsigned int, signed int, signed char);
extern unsigned int (*v6) (unsigned int, signed int, signed char);
extern signed int v7 (signed short, unsigned char);
extern signed int (*v8) (signed short, unsigned char);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed char v11 (unsigned char);
extern signed char (*v12) (unsigned char);
unsigned int v13 (signed int, unsigned short, unsigned char, unsigned int);
unsigned int (*v14) (signed int, unsigned short, unsigned char, unsigned int) = v13;
extern unsigned short v15 (unsigned short, signed short, signed int);
extern unsigned short (*v16) (unsigned short, signed short, signed int);
extern void v17 (signed short);
extern void (*v18) (signed short);
extern unsigned int v19 (signed short, signed short);
extern unsigned int (*v20) (signed short, signed short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned short v25 (signed int, unsigned short);
extern unsigned short (*v26) (signed int, unsigned short);
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
extern void v29 (signed int, signed short, signed int, signed short);
extern void (*v30) (signed int, signed short, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v114 = 3;
unsigned short v113 = 2;
unsigned char v112 = 1;

unsigned int v13 (signed int v115, unsigned short v116, unsigned char v117, unsigned int v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned int v121 = 1U;
unsigned int v120 = 5U;
signed short v119 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
