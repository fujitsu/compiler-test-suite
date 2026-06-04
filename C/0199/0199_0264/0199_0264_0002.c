#include <stdlib.h>
extern void v1 (signed int, unsigned char, signed int);
extern void (*v2) (signed int, unsigned char, signed int);
extern unsigned int v3 (signed short, unsigned char);
extern unsigned int (*v4) (signed short, unsigned char);
extern signed char v5 (unsigned int, signed short);
extern signed char (*v6) (unsigned int, signed short);
extern unsigned short v7 (unsigned int, unsigned short, signed char, unsigned int);
extern unsigned short (*v8) (unsigned int, unsigned short, signed char, unsigned int);
extern signed int v9 (signed short);
extern signed int (*v10) (signed short);
extern unsigned short v11 (signed char, unsigned short, unsigned short);
extern unsigned short (*v12) (signed char, unsigned short, unsigned short);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern unsigned short v15 (signed int, unsigned int, signed int, signed int);
extern unsigned short (*v16) (signed int, unsigned int, signed int, signed int);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern void v21 (unsigned char);
extern void (*v22) (unsigned char);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
signed char v25 (unsigned char);
signed char (*v26) (unsigned char) = v25;
extern signed short v27 (signed char, unsigned short, unsigned int, unsigned int);
extern signed short (*v28) (signed char, unsigned short, unsigned int, unsigned int);
extern signed int v29 (unsigned short, signed int);
extern signed int (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v90 = -1;
unsigned int v89 = 6U;
signed int v88 = -2;

signed char v25 (unsigned char v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
signed char v94 = 3;
signed char v93 = -1;
signed short v92 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
