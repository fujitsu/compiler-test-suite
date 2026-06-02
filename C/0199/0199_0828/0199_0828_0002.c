#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (signed int, signed int, unsigned int, signed int);
extern unsigned short (*v8) (signed int, signed int, unsigned int, signed int);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned int v13 (unsigned short, signed int, unsigned char, unsigned char);
extern unsigned int (*v14) (unsigned short, signed int, unsigned char, unsigned char);
extern unsigned short v15 (unsigned char, unsigned char);
extern unsigned short (*v16) (unsigned char, unsigned char);
extern unsigned char v17 (unsigned short, unsigned int, signed char, unsigned int);
extern unsigned char (*v18) (unsigned short, unsigned int, signed char, unsigned int);
extern signed int v19 (signed int, signed int);
extern signed int (*v20) (signed int, signed int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned char v23 (signed short);
extern unsigned char (*v24) (signed short);
extern signed int v25 (unsigned char, unsigned char, unsigned int, signed char);
extern signed int (*v26) (unsigned char, unsigned char, unsigned int, signed char);
extern signed char v27 (unsigned int, signed short);
extern signed char (*v28) (unsigned int, signed short);
void v29 (signed short);
void (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v91 = -3;
signed short v90 = -2;
unsigned int v89 = 0U;

void v29 (signed short v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = -2;
signed short v94 = -3;
unsigned char v93 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
