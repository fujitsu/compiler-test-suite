#include <stdlib.h>
extern unsigned int v3 (unsigned short, unsigned short);
extern unsigned int (*v4) (unsigned short, unsigned short);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed char v7 (unsigned char, signed char);
extern signed char (*v8) (unsigned char, signed char);
extern signed int v9 (unsigned int, signed short);
extern signed int (*v10) (unsigned int, signed short);
extern void v11 (signed char, signed short, signed short);
extern void (*v12) (signed char, signed short, signed short);
extern unsigned char v13 (unsigned char);
extern unsigned char (*v14) (unsigned char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned int v17 (signed char, signed short);
extern unsigned int (*v18) (signed char, signed short);
void v19 (unsigned char, unsigned char);
void (*v20) (unsigned char, unsigned char) = v19;
extern signed char v21 (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed char (*v22) (unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned int v25 (signed short, unsigned char, unsigned char);
extern unsigned int (*v26) (signed short, unsigned char, unsigned char);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v84 = 0;
unsigned char v83 = 6;
signed int v82 = 0;

void v19 (unsigned char v85, unsigned char v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = -2;
signed char v88 = -2;
unsigned short v87 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
