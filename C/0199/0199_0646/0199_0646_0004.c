#include <stdlib.h>
extern signed short v1 (signed char, signed int);
extern signed short (*v2) (signed char, signed int);
extern unsigned char v3 (unsigned char, unsigned int);
extern unsigned char (*v4) (unsigned char, unsigned int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
unsigned short v7 (signed short, unsigned char, signed short);
unsigned short (*v8) (signed short, unsigned char, signed short) = v7;
extern unsigned int v9 (signed short, unsigned int);
extern unsigned int (*v10) (signed short, unsigned int);
extern unsigned char v11 (unsigned int);
extern unsigned char (*v12) (unsigned int);
extern unsigned int v13 (signed char, signed short, signed short);
extern unsigned int (*v14) (signed char, signed short, signed short);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned int v17 (signed int, unsigned int);
extern unsigned int (*v18) (signed int, unsigned int);
extern unsigned char v19 (unsigned int);
extern unsigned char (*v20) (unsigned int);
extern signed char v21 (signed char, unsigned short, signed short, unsigned short);
extern signed char (*v22) (signed char, unsigned short, signed short, unsigned short);
extern signed short v23 (signed char, signed int, signed char);
extern signed short (*v24) (signed char, signed int, signed char);
extern signed short v25 (unsigned int, signed int);
extern signed short (*v26) (unsigned int, signed int);
extern signed char v27 (signed int, unsigned short, signed short, unsigned char);
extern signed char (*v28) (signed int, unsigned short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v135 = 1;
signed short v134 = 1;
signed short v133 = 1;

unsigned short v7 (signed short v136, unsigned char v137, signed short v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed short v141 = 3;
signed short v140 = -3;
unsigned short v139 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
