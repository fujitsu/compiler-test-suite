#include <stdlib.h>
extern signed int v3 (unsigned int, unsigned int, unsigned int, signed int);
extern signed int (*v4) (unsigned int, unsigned int, unsigned int, signed int);
extern unsigned char v5 (unsigned char);
extern unsigned char (*v6) (unsigned char);
extern signed char v7 (signed short, signed short, unsigned short, unsigned short);
extern signed char (*v8) (signed short, signed short, unsigned short, unsigned short);
extern signed char v9 (unsigned int, signed char, signed char, unsigned char);
extern signed char (*v10) (unsigned int, signed char, signed char, unsigned char);
extern void v11 (signed short, unsigned short, unsigned char, signed int);
extern void (*v12) (signed short, unsigned short, unsigned char, signed int);
extern signed int v13 (unsigned short, signed short);
extern signed int (*v14) (unsigned short, signed short);
extern unsigned char v15 (unsigned short, unsigned short, signed short, unsigned char);
extern unsigned char (*v16) (unsigned short, unsigned short, signed short, unsigned char);
extern signed char v17 (unsigned short);
extern signed char (*v18) (unsigned short);
extern signed int v19 (signed int, signed char, unsigned short, signed char);
extern signed int (*v20) (signed int, signed char, unsigned short, signed char);
extern unsigned int v21 (signed short);
extern unsigned int (*v22) (signed short);
signed int v23 (unsigned char, unsigned int);
signed int (*v24) (unsigned char, unsigned int) = v23;
extern unsigned int v25 (signed short, unsigned char, signed short, unsigned short);
extern unsigned int (*v26) (signed short, unsigned char, signed short, unsigned short);
extern signed short v27 (signed int, signed char, signed int, signed char);
extern signed short (*v28) (signed int, signed char, signed int, signed char);
extern signed short v29 (signed int, unsigned short, unsigned char);
extern signed short (*v30) (signed int, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v74 = -4;
unsigned char v73 = 2;
signed short v72 = -4;

signed int v23 (unsigned char v75, unsigned int v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 3;
unsigned short v78 = 1;
signed char v77 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
