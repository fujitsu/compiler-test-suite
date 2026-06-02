#include <stdlib.h>
extern void v1 (unsigned short, unsigned char, unsigned char, signed int);
extern void (*v2) (unsigned short, unsigned char, unsigned char, signed int);
extern signed short v3 (unsigned short, unsigned short);
extern signed short (*v4) (unsigned short, unsigned short);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed int v11 (signed short, signed char);
extern signed int (*v12) (signed short, signed char);
extern signed int v13 (signed char, unsigned char);
extern signed int (*v14) (signed char, unsigned char);
extern signed short v15 (signed short, signed char);
extern signed short (*v16) (signed short, signed char);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
extern unsigned int v19 (signed int, unsigned int, signed short);
extern unsigned int (*v20) (signed int, unsigned int, signed short);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern unsigned short v23 (signed short, signed int, signed char);
extern unsigned short (*v24) (signed short, signed int, signed char);
unsigned char v25 (signed int, unsigned char);
unsigned char (*v26) (signed int, unsigned char) = v25;
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v115 = 3;
unsigned char v114 = 3;
signed short v113 = -1;

unsigned char v25 (signed int v116, unsigned char v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned short v120 = 2;
unsigned short v119 = 1;
signed char v118 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
