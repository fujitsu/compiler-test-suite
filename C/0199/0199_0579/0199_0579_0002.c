#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
void v5 (unsigned char, unsigned int);
void (*v6) (unsigned char, unsigned int) = v5;
extern unsigned short v7 (unsigned int, signed short, signed char, signed char);
extern unsigned short (*v8) (unsigned int, signed short, signed char, signed char);
extern signed int v9 (unsigned short, signed int, unsigned int, signed char);
extern signed int (*v10) (unsigned short, signed int, unsigned int, signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned short v13 (unsigned char, unsigned short, unsigned int, unsigned int);
extern unsigned short (*v14) (unsigned char, unsigned short, unsigned int, unsigned int);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed int v17 (unsigned int, unsigned int);
extern signed int (*v18) (unsigned int, unsigned int);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern signed short v21 (unsigned int, unsigned char);
extern signed short (*v22) (unsigned int, unsigned char);
extern signed short v23 (unsigned short, signed int, signed short);
extern signed short (*v24) (unsigned short, signed int, signed short);
extern signed char v25 (unsigned char, signed char);
extern signed char (*v26) (unsigned char, signed char);
extern void v27 (signed int);
extern void (*v28) (signed int);
extern signed char v29 (signed int);
extern signed char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v84 = 5U;
signed char v83 = 3;
unsigned char v82 = 1;

void v5 (unsigned char v85, unsigned int v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = -1;
unsigned short v88 = 1;
signed short v87 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
