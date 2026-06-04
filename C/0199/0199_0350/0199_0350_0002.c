#include <stdlib.h>
extern unsigned short v1 (signed short, signed short, unsigned int, signed int);
extern unsigned short (*v2) (signed short, signed short, unsigned int, signed int);
extern signed short v3 (signed int);
extern signed short (*v4) (signed int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed short v7 (signed int, signed int, unsigned char, unsigned short);
extern signed short (*v8) (signed int, signed int, unsigned char, unsigned short);
extern unsigned int v11 (signed int, unsigned int);
extern unsigned int (*v12) (signed int, unsigned int);
extern signed short v13 (signed short, signed char, unsigned short);
extern signed short (*v14) (signed short, signed char, unsigned short);
void v15 (signed short, signed char);
void (*v16) (signed short, signed char) = v15;
extern unsigned int v19 (signed char, unsigned int);
extern unsigned int (*v20) (signed char, unsigned int);
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
extern signed char v23 (signed short);
extern signed char (*v24) (signed short);
extern unsigned int v25 (signed short, unsigned short, unsigned int);
extern unsigned int (*v26) (signed short, unsigned short, unsigned int);
extern signed char v27 (unsigned int, signed char);
extern signed char (*v28) (unsigned int, signed char);
extern unsigned int v29 (unsigned short, unsigned short, signed int, signed int);
extern unsigned int (*v30) (unsigned short, unsigned short, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v83 = 0;
unsigned char v82 = 4;
signed int v81 = 2;

void v15 (signed short v84, signed char v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed int v88 = -3;
signed char v87 = -2;
signed short v86 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
