#include <stdlib.h>
extern signed char v1 (signed char, signed short);
extern signed char (*v2) (signed char, signed short);
extern void v3 (signed char, unsigned char, signed short, signed char);
extern void (*v4) (signed char, unsigned char, signed short, signed char);
extern void v5 (signed short, unsigned char, unsigned int);
extern void (*v6) (signed short, unsigned char, unsigned int);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (signed int, unsigned short, unsigned int);
extern unsigned int (*v10) (signed int, unsigned short, unsigned int);
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
extern signed short v15 (unsigned int, signed int, signed short);
extern signed short (*v16) (unsigned int, signed int, signed short);
extern signed short v17 (signed short, signed int);
extern signed short (*v18) (signed short, signed int);
extern unsigned char v19 (unsigned short, unsigned short);
extern unsigned char (*v20) (unsigned short, unsigned short);
extern void v21 (signed int, signed int, unsigned int);
extern void (*v22) (signed int, signed int, unsigned int);
void v25 (signed short, signed short, unsigned char);
void (*v26) (signed short, signed short, unsigned char) = v25;
extern signed short v27 (signed int, unsigned char, unsigned short);
extern signed short (*v28) (signed int, unsigned char, unsigned short);
extern unsigned short v29 (unsigned char, signed char);
extern unsigned short (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v84 = 1;
signed short v83 = -2;
unsigned short v82 = 6;

void v25 (signed short v85, signed short v86, unsigned char v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 6;
signed char v89 = -2;
unsigned char v88 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
