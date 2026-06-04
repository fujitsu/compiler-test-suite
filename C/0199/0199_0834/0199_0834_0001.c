#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
unsigned int v11 (signed int, unsigned char, signed char, unsigned short);
unsigned int (*v12) (signed int, unsigned char, signed char, unsigned short) = v11;
extern unsigned short v13 (signed int, unsigned int, unsigned short);
extern unsigned short (*v14) (signed int, unsigned int, unsigned short);
extern unsigned char v15 (unsigned char, signed char);
extern unsigned char (*v16) (unsigned char, signed char);
extern unsigned short v17 (unsigned short, signed short, unsigned short, signed char);
extern unsigned short (*v18) (unsigned short, signed short, unsigned short, signed char);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed short v21 (signed int);
extern signed short (*v22) (signed int);
extern signed int v23 (signed short, unsigned short, unsigned int, signed int);
extern signed int (*v24) (signed short, unsigned short, unsigned int, signed int);
extern signed char v25 (unsigned short, unsigned char, signed char, signed int);
extern signed char (*v26) (unsigned short, unsigned char, signed char, signed int);
extern unsigned short v27 (signed char, signed int, unsigned char, signed int);
extern unsigned short (*v28) (signed char, signed int, unsigned char, signed int);
extern unsigned short v29 (signed int, unsigned char, signed char, unsigned int);
extern unsigned short (*v30) (signed int, unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v89 = -1;
unsigned char v88 = 4;
unsigned short v87 = 0;

unsigned int v11 (signed int v90, unsigned char v91, signed char v92, unsigned short v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned short v96 = 1;
signed char v95 = 1;
unsigned int v94 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
