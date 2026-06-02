#include <stdlib.h>
extern signed int v1 (unsigned short, signed int, unsigned short);
extern signed int (*v2) (unsigned short, signed int, unsigned short);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern void v5 (signed short);
extern void (*v6) (signed short);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
void v9 (unsigned char, signed short, signed int, signed short);
void (*v10) (unsigned char, signed short, signed int, signed short) = v9;
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
extern unsigned char v13 (unsigned short, unsigned char, unsigned int);
extern unsigned char (*v14) (unsigned short, unsigned char, unsigned int);
extern unsigned char v15 (signed short, signed short);
extern unsigned char (*v16) (signed short, signed short);
extern unsigned short v17 (signed char, unsigned char);
extern unsigned short (*v18) (signed char, unsigned char);
extern unsigned char v21 (unsigned char, unsigned char, signed char);
extern unsigned char (*v22) (unsigned char, unsigned char, signed char);
extern unsigned char v23 (signed char, unsigned char, signed int);
extern unsigned char (*v24) (signed char, unsigned char, signed int);
extern unsigned int v25 (unsigned int);
extern unsigned int (*v26) (unsigned int);
extern unsigned int v27 (unsigned char, unsigned char, signed char);
extern unsigned int (*v28) (unsigned char, unsigned char, signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v63 = -4;
signed char v62 = 0;
unsigned char v61 = 3;

void v9 (unsigned char v64, signed short v65, signed int v66, signed short v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = -3;
unsigned int v69 = 2U;
signed short v68 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
