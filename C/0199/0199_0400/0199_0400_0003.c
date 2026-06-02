#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed int v3 (unsigned char, signed char);
extern signed int (*v4) (unsigned char, signed char);
extern signed int v5 (unsigned int, unsigned int, signed short, unsigned char);
extern signed int (*v6) (unsigned int, unsigned int, signed short, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v9 (unsigned short, unsigned int, signed char);
extern unsigned int (*v10) (unsigned short, unsigned int, signed char);
extern unsigned char v11 (unsigned short, unsigned short, unsigned short);
extern unsigned char (*v12) (unsigned short, unsigned short, unsigned short);
extern signed short v13 (signed short, unsigned short);
extern signed short (*v14) (signed short, unsigned short);
signed char v15 (unsigned char, signed char);
signed char (*v16) (unsigned char, signed char) = v15;
extern unsigned int v17 (signed short, signed int);
extern unsigned int (*v18) (signed short, signed int);
extern signed short v21 (signed char, signed char);
extern signed short (*v22) (signed char, signed char);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern signed int v29 (signed short, signed char);
extern signed int (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v90 = 7;
signed char v89 = 2;
unsigned int v88 = 6U;

signed char v15 (unsigned char v91, signed char v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned short v95 = 1;
signed int v94 = -1;
signed char v93 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
