#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed short, signed char, unsigned char);
extern unsigned char (*v2) (unsigned short, signed short, signed char, unsigned char);
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern unsigned char v5 (unsigned char, signed short);
extern unsigned char (*v6) (unsigned char, signed short);
extern unsigned int v7 (signed int, signed short, unsigned short, signed char);
extern unsigned int (*v8) (signed int, signed short, unsigned short, signed char);
extern void v9 (signed short, signed short);
extern void (*v10) (signed short, signed short);
extern signed short v11 (signed int);
extern signed short (*v12) (signed int);
extern unsigned int v13 (signed short, unsigned char, signed int);
extern unsigned int (*v14) (signed short, unsigned char, signed int);
extern unsigned char v15 (unsigned short, unsigned int);
extern unsigned char (*v16) (unsigned short, unsigned int);
extern signed short v17 (signed short, unsigned int, unsigned int);
extern signed short (*v18) (signed short, unsigned int, unsigned int);
extern signed int v19 (unsigned int, signed short, unsigned char, signed short);
extern signed int (*v20) (unsigned int, signed short, unsigned char, signed short);
signed short v23 (signed short, unsigned char, signed short);
signed short (*v24) (signed short, unsigned char, signed short) = v23;
extern signed short v25 (unsigned char, signed short);
extern signed short (*v26) (unsigned char, signed short);
extern unsigned short v27 (signed int, unsigned char, unsigned char, signed char);
extern unsigned short (*v28) (signed int, unsigned char, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v77 = 6;
signed char v76 = 0;
unsigned char v75 = 7;

signed short v23 (signed short v78, unsigned char v79, signed short v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned short v83 = 2;
signed char v82 = 2;
unsigned short v81 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
