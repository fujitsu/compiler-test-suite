#include <stdlib.h>
extern unsigned int v1 (unsigned int, unsigned char, signed char);
extern unsigned int (*v2) (unsigned int, unsigned char, signed char);
extern signed int v3 (unsigned short, signed int, signed short, unsigned short);
extern signed int (*v4) (unsigned short, signed int, signed short, unsigned short);
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern signed int v7 (unsigned short, signed int, unsigned char, unsigned short);
extern signed int (*v8) (unsigned short, signed int, unsigned char, unsigned short);
unsigned char v9 (signed char, unsigned short);
unsigned char (*v10) (signed char, unsigned short) = v9;
extern signed int v11 (unsigned short);
extern signed int (*v12) (unsigned short);
extern signed int v13 (signed short, signed int);
extern signed int (*v14) (signed short, signed int);
extern signed int v15 (unsigned char, signed char, signed short);
extern signed int (*v16) (unsigned char, signed char, signed short);
extern signed char v17 (signed short, unsigned int, signed char);
extern signed char (*v18) (signed short, unsigned int, signed char);
extern void v19 (signed int, unsigned int, signed short);
extern void (*v20) (signed int, unsigned int, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern void v25 (signed int, signed int);
extern void (*v26) (signed int, signed int);
extern signed short v27 (unsigned int, unsigned short, signed int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned short, signed int, unsigned short);
extern unsigned short v29 (unsigned short, signed char, unsigned short);
extern unsigned short (*v30) (unsigned short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v77 = 5;
unsigned int v76 = 6U;
signed short v75 = -1;

unsigned char v9 (signed char v78, unsigned short v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed int v82 = -1;
signed char v81 = 0;
signed short v80 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
