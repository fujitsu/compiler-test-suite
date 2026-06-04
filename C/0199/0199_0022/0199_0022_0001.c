#include <stdlib.h>
extern signed char v1 (signed char, signed int, unsigned int, signed int);
extern signed char (*v2) (signed char, signed int, unsigned int, signed int);
extern signed char v3 (unsigned int, unsigned char, signed int);
extern signed char (*v4) (unsigned int, unsigned char, signed int);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern void v7 (signed int);
extern void (*v8) (signed int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
void v13 (unsigned short, unsigned short);
void (*v14) (unsigned short, unsigned short) = v13;
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern signed short v19 (signed char, unsigned int, unsigned char, unsigned int);
extern signed short (*v20) (signed char, unsigned int, unsigned char, unsigned int);
extern unsigned int v21 (signed char, signed short, signed char);
extern unsigned int (*v22) (signed char, signed short, signed char);
extern void v23 (signed int, unsigned short);
extern void (*v24) (signed int, unsigned short);
extern signed short v25 (signed int, signed char, signed int);
extern signed short (*v26) (signed int, signed char, signed int);
extern unsigned short v29 (unsigned char, signed int, unsigned int);
extern unsigned short (*v30) (unsigned char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v65 = 7;
unsigned char v64 = 6;
signed int v63 = -1;

void v13 (unsigned short v66, unsigned short v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed short v70 = 3;
signed short v69 = 3;
signed short v68 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
