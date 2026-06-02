#include <stdlib.h>
extern void v3 (signed short, unsigned int, signed char, signed char);
extern void (*v4) (signed short, unsigned int, signed char, signed char);
extern unsigned short v5 (unsigned int, signed short);
extern unsigned short (*v6) (unsigned int, signed short);
extern signed short v7 (unsigned short, unsigned char);
extern signed short (*v8) (unsigned short, unsigned char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (signed char, unsigned short, unsigned int);
extern signed short (*v12) (signed char, unsigned short, unsigned int);
extern unsigned char v13 (signed int, signed short);
extern unsigned char (*v14) (signed int, signed short);
extern signed int v15 (signed char, unsigned char, signed int, unsigned char);
extern signed int (*v16) (signed char, unsigned char, signed int, unsigned char);
extern void v17 (unsigned int, unsigned short, signed char, unsigned short);
extern void (*v18) (unsigned int, unsigned short, signed char, unsigned short);
void v19 (signed char, unsigned char);
void (*v20) (signed char, unsigned char) = v19;
extern void v21 (signed short, signed int);
extern void (*v22) (signed short, signed int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned int v25 (signed int, unsigned char);
extern unsigned int (*v26) (signed int, unsigned char);
extern signed char v27 (signed short, signed short);
extern signed char (*v28) (signed short, signed short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v82 = 7;
unsigned char v81 = 7;
signed int v80 = 2;

void v19 (signed char v83, unsigned char v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed short v87 = -3;
unsigned int v86 = 1U;
signed short v85 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
