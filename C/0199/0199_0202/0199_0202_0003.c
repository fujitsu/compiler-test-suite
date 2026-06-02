#include <stdlib.h>
extern void v1 (signed char, signed short, unsigned int);
extern void (*v2) (signed char, signed short, unsigned int);
extern unsigned short v3 (unsigned int, signed char);
extern unsigned short (*v4) (unsigned int, signed char);
extern unsigned short v5 (signed char, signed char);
extern unsigned short (*v6) (signed char, signed char);
void v7 (signed short);
void (*v8) (signed short) = v7;
extern signed int v9 (signed int, signed short);
extern signed int (*v10) (signed int, signed short);
extern unsigned int v11 (unsigned short, unsigned int, signed short);
extern unsigned int (*v12) (unsigned short, unsigned int, signed short);
extern void v13 (unsigned short);
extern void (*v14) (unsigned short);
extern signed char v15 (signed int, signed short, signed short, signed int);
extern signed char (*v16) (signed int, signed short, signed short, signed int);
extern unsigned int v19 (unsigned short);
extern unsigned int (*v20) (unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (unsigned int, signed short);
extern signed int (*v26) (unsigned int, signed short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v128 = 0U;
unsigned char v127 = 0;
signed short v126 = -3;

void v7 (signed short v129)
{
history[history_index++] = (int)v129;
{
for (;;) {
signed short v132 = -3;
unsigned char v131 = 4;
signed char v130 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
