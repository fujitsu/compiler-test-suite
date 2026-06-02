#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned char v3 (unsigned int, signed int);
extern unsigned char (*v4) (unsigned int, signed int);
extern void v5 (unsigned char, signed short, signed int);
extern void (*v6) (unsigned char, signed short, signed int);
extern unsigned char v7 (unsigned char, signed short);
extern unsigned char (*v8) (unsigned char, signed short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern signed short v11 (signed int, signed char, unsigned short);
extern signed short (*v12) (signed int, signed char, unsigned short);
void v13 (unsigned int, unsigned char);
void (*v14) (unsigned int, unsigned char) = v13;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern void v19 (unsigned int, unsigned char, signed char, unsigned int);
extern void (*v20) (unsigned int, unsigned char, signed char, unsigned int);
extern unsigned int v21 (unsigned int, signed int, signed int, unsigned int);
extern unsigned int (*v22) (unsigned int, signed int, signed int, unsigned int);
extern unsigned short v23 (signed int, unsigned int);
extern unsigned short (*v24) (signed int, unsigned int);
extern unsigned short v25 (unsigned short);
extern unsigned short (*v26) (unsigned short);
extern signed char v27 (unsigned char, unsigned int);
extern signed char (*v28) (unsigned char, unsigned int);
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v63 = 4;
unsigned short v62 = 3;
unsigned short v61 = 7;

void v13 (unsigned int v64, unsigned char v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned char v68 = 1;
unsigned int v67 = 1U;
signed char v66 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
