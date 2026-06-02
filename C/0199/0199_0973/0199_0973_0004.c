#include <stdlib.h>
extern void v1 (unsigned short, signed int);
extern void (*v2) (unsigned short, signed int);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern signed int v5 (unsigned short, signed char, signed short, signed short);
extern signed int (*v6) (unsigned short, signed char, signed short, signed short);
unsigned short v7 (signed int);
unsigned short (*v8) (signed int) = v7;
extern unsigned short v9 (unsigned char, unsigned char, unsigned char);
extern unsigned short (*v10) (unsigned char, unsigned char, unsigned char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
extern unsigned char v15 (unsigned short, unsigned char, unsigned char);
extern unsigned char (*v16) (unsigned short, unsigned char, unsigned char);
extern signed int v17 (signed char, unsigned int, signed short, signed short);
extern signed int (*v18) (signed char, unsigned int, signed short, signed short);
extern void v19 (void);
extern void (*v20) (void);
extern signed char v21 (signed char, signed short);
extern signed char (*v22) (signed char, signed short);
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
extern unsigned char v25 (unsigned short, signed int, unsigned int, signed int);
extern unsigned char (*v26) (unsigned short, signed int, unsigned int, signed int);
extern signed short v27 (unsigned int, unsigned int);
extern signed short (*v28) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v137 = 1;
signed short v136 = -1;
unsigned int v135 = 7U;

unsigned short v7 (signed int v138)
{
history[history_index++] = (int)v138;
{
for (;;) {
unsigned short v141 = 5;
unsigned int v140 = 3U;
signed char v139 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
